require 'formula'

#
# Installs a relatively minimalist version of the GPAC tools. The
# most commonly used tool in this package is the MP4Box metadata
# interleaver, which has relatively few dependencies.
#
# The challenge with building everything is that Gpac depends on
# a much older version of FFMpeg and WxWidgets than the version
# that Brew installs
#

class Mp4box < Formula
  homepage 'http://gpac.sourceforge.net/index.php'
  url 'http://downloads.sourceforge.net/gpac/gpac-0.5.0.tar.gz'
  sha1 '48ba16272bfa153abb281ff8ed31b5dddf60cf20'

  head 'https://gpac.svn.sourceforge.net/svnroot/gpac/trunk/gpac', :using => :svn

  def install
    ENV.deparallelize

    args = ["--disable-wx",
            "--prefix=#{prefix}",
            "--mandir=#{man}",
            "--static-mp4box",
            "--use-ffmpeg=no",
            "--use-ogg=no",
            "--use-vorbis=no",
            "--disable-player",
            "--disable-m2ts",
            "--disable-ipv6"]
    chmod 0700, "configure"
    system "./configure", *args
    system "make lib"
    system "make apps"
#    system "mv bin/gcc/MP4Box bin/gcc/tmp"
#    system "mv bin/gcc/tmp bin/gcc/mp4box"
    system "install -d #{bin}"
    system "install -s bin/gcc/MP4box #{bin}/mp4box"
  end
end
