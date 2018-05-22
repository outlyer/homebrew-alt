
class Pdd < Formula
  desc ":date: Tiny date, time diff calculator with timers"
  homepage "https://github.com/jarun/pdd"
  url "https://github.com/jarun/pdd/archive/v1.2.tar.gz"
  sha256 "89821804026815be80ad2ae84b0afcb7203e34a49f0654e78852d0394950cdbc"

  depends_on "python"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "#{bin}/pdd"
  end
end
