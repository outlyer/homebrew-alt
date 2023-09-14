class Kindlegen < Formula
  desc "Kindle to Mobi converter"
  url 'https://d2bzeorukaqrvt.cloudfront.net/KindlePreviewerInstaller.pkg'
  homepage 'http://www.amazon.com/gp/feature.html?docId=1000234621'
  sha256 '71823754dbe3270f27c227beef1d9be56b257e7a67796a592a26486dbecfab49'
  version '2.9'

  #skip_clean 'bin'

  def install
    pkg_path = "KindlePreviewerInstaller.pkg"
    system "pkgutil", "--expand-full", pkg_path, "tmp"
    #system "gunzip","-dc","tmp/KindlePreviewer.pkg/Payload | cpio -ivV"
    bin.install  "tmp/KindlePreviewer.pkg/Payload/Kindle\ Previewer\ 3.app/Contents/lib/fc/bin/kindlegen" => "kindlegen"
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
