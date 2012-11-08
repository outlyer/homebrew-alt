require 'formula'

class Kindlegen < Formula
  url 'http://s3.amazonaws.com/kindlegen/KindleGen_Mac_i386_v2_7.zip'
  homepage 'http://www.amazon.com/gp/feature.html?docId=1000234621'
  md5 'b041f83c720ff7b9181e576c0a82140c'
  version '2.7'

  skip_clean 'bin'

  def install
    chmod 0755, Dir['kindlegen']
    bin.install Dir['kindlegen']
  end

  def test
    system "kindlegen"
  end

  def caveats; <<-EOS
We agreed to the KindleGen License Agreement for you by downloading KindleGen.
If this is unacceptable you should uninstall.

License information at:
http://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000234621
EOS
  end
end
