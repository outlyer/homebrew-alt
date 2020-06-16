require 'formula'

class Kindlegen < Formula
  url 'https://s3.amazonaws.com/kindlepreviewer3/KindlePreviewerInstaller.pkg'
  homepage 'http://www.amazon.com/gp/feature.html?docId=1000234621'
  sha256 '0af12a8fe799205f06a7e0f3f94287b77f1aa6e796d1fd3babaf9d4b09fc5858'
  version '2.9'

  skip_clean 'bin'

  def install
    #OUTPUTPATH=/tmp/kindlegen
  	#pkgutil --expand KindlePreviewerInstaller.pkg $OUTPUTPATH
    #\cat $OUTPUTPATH/KindlePreviewer.pkg/Payload | gunzip > $OUTPUTPATH/Payload
    # cd $OUTPUTPATH
    #\cat $OUTPUTPATH/Payload | cpio -i
    #bin.install  $OUTPUTPATH/Kindle\ Previewer\ 3.app/Contents/lib/fc/bin/kindlegen

    #chmod 0755, Dir['kindlegen']
    #bin.install Dir['kindlegen']

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
