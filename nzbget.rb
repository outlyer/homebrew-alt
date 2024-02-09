class Nzbget < Formula
  desc "Binary newsgrabber for nzb files"
  homepage "https://github.com/nzbgetcom/nzbget"
  url "https://github.com/nzbgetcom/nzbget/archive/refs/tags/v23.0.tar.gz"
  sha256 "93257393823372699ba38340d5447850905959a6c6ccd5c082bea212f0f0bc46"
  license "GPL-2.0-or-later"
  head "https://github.com/nzbgetcom/nzbget", branch: "develop"

  depends_on "pkg-config" => :build
  depends_on "autoconf" => :build
  depends_on "automake" => :build
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

    # Tell configure to use OpenSSL
    system "autoreconf --install"
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--with-tlslib=OpenSSL"
    system "make"
    ENV.deparallelize
    system "make", "install"
    pkgshare.install_symlink "nzbget.conf" => "webui/nzbget.conf"

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
