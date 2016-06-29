require 'formula'

class Rmlint < Formula
  homepage 'https://github.com/sahib/rmlint'
  url 'https://github.com/sahib/rmlint/archive/v2.4.4.tar.gz'
  version '2.4.4'
  sha256 '294708e7c98783a7782df1ed7f6fc79e9036571b7f69f76c5b3455545ce568bc'
  depends_on "scons" => :build

  head 'https://github.com/sahib/rmlint.git', :branch => 'master'

  #depends_on "scons" => :build
  #depends_on "glib" => :build
 
  def install
    system "scons", "install", "--prefix=#{prefix}"
  end
end
