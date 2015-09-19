class Sickbeardmp4automator < Formula
  desc "Automatically convert video files to a standardized mp4 format with proper metadata tagging to create a beautiful and uniform media library"
  homepage "https://github.com/mdhiggins/sickbeard_mp4_automator"
  head "https://github.com/mdhiggins/sickbeard_mp4_automator.git"

  depends_on :python if MacOS.version <= :snow_leopard

  resource "babelfish" do
    url "https://pypi.python.org/packages/source/b/babelfish/babelfish-0.5.4.tar.gz"
    sha256 "6e4f41f185b30b81232589c10b059546f3320cc440c5987f182ee82ab1778b47"
  end

  resource "beautifulsoup4" do
    url "https://pypi.python.org/packages/source/b/beautifulsoup4/beautifulsoup4-4.4.0.tar.gz"
    sha256 "fad91da88f69438b9ba939ab1b2cabaa31b1d914f1cccb4bb157a993ed2917f6"
  end

  resource "chardet" do
    url "https://pypi.python.org/packages/source/c/chardet/chardet-2.3.0.tar.gz"
    sha256 "e53e38b3a4afe6d1132de62b7400a4ac363452dc5dfcf8d88e8e0cce663c68aa"
  end

  resource "click" do
    url "https://pypi.python.org/packages/source/c/click/click-4.1.tar.gz"
    sha256 "e339ed09f25e2145314c902a870bc959adcb25653a2bd5cc1b48d9f56edf8ed8"
  end

  resource "dogpile.cache" do
    url "https://pypi.python.org/packages/source/d/dogpile.cache/dogpile.cache-0.5.6.tar.gz"
    sha256 "f80544c5555f66cf7b5fc99f15431f3b35f78009bc6b03b58fe1724236bbc57b"
  end

  resource "dogpile.core" do
    url "https://pypi.python.org/packages/source/d/dogpile.core/dogpile.core-0.4.1.tar.gz"
    sha256 "be652fb11a8eaf66f7e5c94d418d2eaa60a2fe81dae500f3743a863cc9dbed76"
  end

  resource "enzyme" do
    url "https://pypi.python.org/packages/source/e/enzyme/enzyme-0.4.1.tar.gz"
    sha256 "f2167fa97c24d1103a94d4bf4eb20f00ca76c38a37499821049253b2059c62bb"
  end

  resource "guessit" do
    url "https://pypi.python.org/packages/source/g/guessit/guessit-0.10.3.tar.gz"
    sha256 "d14ea0a2ea3413ec46119ea4d7a91b1f045761cfb3dc262c9dcd545742712dfe"
  end

  resource "pbr" do
    url "https://pypi.python.org/packages/source/p/pbr/pbr-1.3.0.tar.gz"
    sha256 "1a6f8d514fc11d2571c75c207d932c106f024f199b5f12d25f8ca022b026c59d"
  end

  resource "pysrt" do
    url "https://pypi.python.org/packages/source/p/pysrt/pysrt-1.0.1.tar.gz"
    sha256 "5300a1584c8d15a1c49ef8880fa1ef7a4274ce3f24dde83ad581d12d875f6784"
  end

  resource "python-dateutil" do
    url "https://pypi.python.org/packages/source/p/python-dateutil/python-dateutil-2.4.2.tar.gz"
    sha256 "3e95445c1db500a344079a47b171c45ef18f57d188dffdb0e4165c71bea8eb3d"
  end

  resource "requests" do
    url "https://pypi.python.org/packages/source/r/requests/requests-2.7.0.tar.gz"
    sha256 "398a3db6d61899d25fd4a06c6ca12051b0ce171d705decd7ed5511517b4bb93d"
  end

  resource "six" do
    url "https://pypi.python.org/packages/source/s/six/six-1.9.0.tar.gz"
    sha256 "e24052411fc4fbd1f672635537c3fc2330d9481b18c0317695b46259512c91d5"
  end

  resource "stevedore" do
    url "https://pypi.python.org/packages/source/s/stevedore/stevedore-1.6.0.tar.gz"
    sha256 "dab2aa31ec742f651e6a2fe0429560aebbbe0fb7fc462fa0ff565c8f5ff2ec25"
  end

  resource "subliminal" do
    url "https://pypi.python.org/packages/source/s/subliminal/subliminal-1.0.1.tar.gz"
    sha256 "f301607fad8cdcf098da8f59f2e62a4a285be0987c61d69f883dc40a0839ebd6"
  end

  def install
   

    prefix.install_metafiles
    libexec.install Dir["*"]
    (bin+"mp4automator").write(cli_script)
    resource("subliminal").stage { system "python", *Language::Python.setup_install_args(libexec/"vendor") }

    ENV.prepend_create_path "PYTHONPATH", libexec/"vendor/lib/python2.7/site-packages"
    %w[babelfish beautifulsoup4 chardet click dogpile.cache dogpile.core enzyme guessit pbr pysrt python-dateutil requests six stevedore].each do |r|
      resource(r).stage do
        system "python", *Language::Python.setup_install_args(libexec/"vendor")
      end
    end
  end

  def cli_script; <<-EOS.undent
    #!/bin/bash
    export PYTHONPATH="#{libexec}/lib/python2.7/site-packages:$PYTHONPATH"
    python "#{libexec}/manual.py"\
           "$@"
    EOS
  end
end
