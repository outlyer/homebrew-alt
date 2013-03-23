require 'formula'

class Rar < Formula
  homepage 'http://www.rarlab.com/'
  url 'http://www.rarlab.com/rar/rarosx-4.2.0.tar.gz'
  sha1 '20c0902650b842130aa3fc5c249c312bcd9d3440'
  skip_clean 'bin'

  def install
    chmod 0755, Dir['rar']
    bin.install Dir['rar']
    #system "cp", "rar","#{prefix}"
  end

  def test
    system "rar"
  end

end
