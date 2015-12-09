require 'formula'

class Rar < Formula
  homepage 'http://www.rarlab.com/'
  url 'http://www.rarlab.com/rar/rarosx-5.3.0.tar.gz'
  sha256 '1a2a4fc7a146a9847386d6e0165bf7bfc540a3d559b15c74d3be42d37c6409cf'
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
