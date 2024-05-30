class Nzbget < Formula
  desc "Binary newsgrabber for nzb files"
  homepage "https://github.com/nzbgetcom/nzbget"
  url "https://github.com/nzbgetcom/nzbget/archive/refs/tags/v24.1.tar.gz"
  sha256 "9b823f5be183573cc51a7e4db5ac0529f5e3b98260676a7ce400784fdf230393"
  license "GPL-2.0-or-later"
  head "https://github.com/nzbgetcom/nzbget", branch: "develop"

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "openssl@3"
  depends_on "boost"

  uses_from_macos "libxml2"
  uses_from_macos "ncurses"

  def install
    ENV.cxx11

    # Fix "ncurses library not found"
    # Reported 14 Aug 2016: https://github.com/nzbget/nzbget/issues/264
    if OS.mac?
      (buildpath/"brew_include").install_symlink MacOS.sdk_path/"usr/include/ncurses.h"
      ENV["ncurses_CFLAGS"] = "-I#{buildpath}/brew_include"
      ENV["ncurses_LIBS"] = "-L/usr/lib -lncurses"
    else
      ENV["ncurses_CFLAGS"] = "-I#{Formula["ncurses"].opt_include}"
      ENV["ncurses_LIBS"] = "-L#{Formula["ncurses"].opt_lib} -lncurses"
    end


    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make"
      ENV.deparallelize
      system "make", "install"
      pkgshare.install_symlink "nzbget.conf" => "webui/nzbget.conf"
  end
  end

  service do
    run [opt_bin/"nzbget", "-c", HOMEBREW_PREFIX/"etc/nzbget.conf", "-s", "-o", "OutputMode=Log",
         "-o", "ConfigTemplate=#{HOMEBREW_PREFIX}/opt/nzbget/share/nzbget/nzbget.conf",
         "-o", "WebDir=#{HOMEBREW_PREFIX}/opt/nzbget/share/nzbget/webui"]
    keep_alive true
    environment_variables PATH: "#{HOMEBREW_PREFIX}/bin:/usr/bin:/bin:/usr/sbin:/sbin"
  end

  test do
    (testpath/"downloads/dst").mkpath
    # Start nzbget as a server in daemon-mode
    system "#{bin}/nzbget", "-D", "-c", etc/"nzbget.conf"
    # Query server for version information
    system "#{bin}/nzbget", "-V", "-c", etc/"nzbget.conf"
    # Shutdown server daemon
    system "#{bin}/nzbget", "-Q", "-c", etc/"nzbget.conf"
  end
end
