class Btop < Formula
  desc "Resource monitor. C++ version and continuation of bashtop and bpytop"
  homepage "https://github.com/aristocratos/btop"
  url "https://github.com/aristocratos/btop/archive/refs/tags/v#{version}.tar.gz"
  sha256 "331d18488b1dc7f06cfa12cff909230816a24c57790ba3e8224b117e3f0ae03e"
  license "Apache-2.0"
  version "1.3.2"
  head "https://github.com/aristocratos/btop.git", branch: "main"

  on_macos do
    depends_on "coreutils" => :build
  end
  
  def install
    system "make", "CXX=#{ENV.cxx}", "STRIP=true", "ADDFLAGS=-march=native"
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    require "pty"
    require "io/console"

    config = (testpath/".config/btop")
    mkdir config/"themes"
    begin
      (config/"btop.conf").write <<~EOS
        #? Config file for btop v. #{version}

        update_ms=2000
        log_level=DEBUG
      EOS

      r, w, pid = PTY.spawn("#{bin}/btop")
      r.winsize = [80, 130]
      sleep 5
      w.write "q"
    rescue Errno::EIO
      # Apple silicon raises EIO
    end

    log = (config/"btop.log").read
    assert_match "===> btop++ v.#{version}", log
    refute_match(/ERROR:/, log)
  ensure
    Process.kill("TERM", pid)
  end
end
