
class Pdd < Formula
  desc ":date: Tiny date, time diff calculator with timers"
  homepage "https://github.com/jarun/pdd"
  url "https://github.com/jarun/pdd/archive/v1.4.tar.gz"
  sha256 "e3d2ec2ebfd94572d033f94885a99906343459431f3299cf945c7bd6f1258eab"

  depends_on "python"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "#{bin}/pdd"
  end
end
