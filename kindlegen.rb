require 'formula'

class Kindlegen < Formula
  url 'http://kindlegen.s3.amazonaws.com/KindleGen_Mac_i386_v2_9.zip'
  homepage 'http://www.amazon.com/gp/feature.html?docId=1000234621'
  sha1 '851064ef18687edaf93abd781f9711a2cb293f7d'
  version '2.9'

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