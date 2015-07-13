require 'formula'

class Rmlint < Formula
  homepage 'https://github.com/sahib/rmlint'
  url 'https://github.com/sahib/rmlint/archive/v1.0.6.tar.gz'
  version '1.0.6'
  sha1 'b1d87bb148b235481733a8353dd3a98866ecee1f'

  head 'https://github.com/sahib/rmlint.git', :branch => 'master'

  #depends_on "scons" => :build
  #depends_on "glib" => :build
 
  def install
    inreplace "Makefile", "/usr", ""
    system "make", "install", "DESTDIR=#{prefix}"
  end
end
