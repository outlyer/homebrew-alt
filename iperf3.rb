require 'formula'

class Iperf3 < Formula
  homepage 'http://iperf.sourceforge.net/'
  url 'http://stats.es.net/software/iperf-3.0.tar.gz'
  sha1 '70b851dbfc4ec4ba22e8761cbf0bf9f4b9b8fccd'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
