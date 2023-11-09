class Sickbeardmp4automator < Formula
  desc "Automatically convert video files to a standardized mp4 format with proper metadata tagging to create a beautiful and uniform media library"
  homepage "https://github.com/mdhiggins/sickbeard_mp4_automator"
  head "https://github.com/mdhiggins/sickbeard_mp4_automator.git"

  depends_on "python3"
  depends_on "outlyer/alt/ffmpeg"

  resource "babelfish" do
    url "https://pypi.python.org/packages/source/b/babelfish/babelfish-0.6.0.tar.gz"
    sha256 "2dadfadd1b205ca5fa5dc9fa637f5b7933160a0418684c7c46a7a664033208a2"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/2a/53/cf0a48de1bdcf6ff6e1c9a023f5f523dfe303e4024f216feac64b6eb7f67/charset-normalizer-3.2.0.tar.gz"
    sha256 "3bb3d25a8e6c0aedd251753a79ae98a093c7e7b471faa3aa9a93a81431987ace"
  end

  resource "guessit" do
    url "https://pypi.python.org/packages/source/g/guessit/guessit-3.1.0.tar.gz"
    sha256 "2dcd3f2acaf6c1a864f903f084ddd6a6b753f3107ae864355d7c8c1e9cb205b2"
  end

  resource "mutagen" do
    url "https://files.pythonhosted.org/packages/96/9f/280220926cabbf4822f80e094a5190fb3df245209648e169c8bcf708697b/mutagen-1.44.0.tar.gz"
    sha256 "56065d8a9ca0bc64610a4d0f37e2bd4453381dde3226b8835ee656faa3287be4"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/be/ed/5bbc91f03fa4c839c4c7360375da77f9659af5f7086b7a7bdda65771c8e0/python-dateutil-2.8.1.tar.gz"
    sha256 "73ebfe9dbf22e832286dafa60473e4cd239f8592f699aa5adaf10050e6e1823c"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/fb/ed/690b971a7b87c6babb15b4097e534f0cc2e6957feb2233e7d279283c61c8/requests3-0.0.0.tar.gz"
    sha256 "74cb66a92f5548a0a3a797a196aa847c8c989ea434d3688a22a96df1183bfe2d"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/dd/bf/4138e7bfb757de47d1f4b6994648ec67a51efe58fa907c1e11e350cddfca/six-1.12.0.tar.gz"
    sha256 "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
  end

  resource "stevedore" do
    url "https://pypi.python.org/packages/ac/16/9ee37ba1708adeb34471c0c9460faa276465e5ccc69d3150a146b7e01f9b/stevedore-1.19.1.tar.gz"
    sha256 "c963858176fdbac899859a9e215411d024e3a46655034a853e0f3b57947c9856"
  end

  resource "subliminal" do
    url "https://pypi.python.org/packages/source/s/subliminal/subliminal-2.0.5.tar.gz"
    sha256 "147aa54f54de62d6fcafa213bb9ea89319600c133dab1a5532ff7126352bfbb7"
  end

  resource "qtfaststart" do
    url "https://pypi.python.org/packages/source/q/qtfaststart/qtfaststart-1.8.tar.gz"
    sha256 "b0442315311f1c1130a34e4e6b04557f5f4aa332ac40bfb1d761418866749241"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ad/13/eb56951b6f7950cadb579ca166e448ba77f9d24efc03edd7e55fa57d04b7/idna-2.8.tar.gz"
    sha256 "c357b3f628cf53ae2c4c05627ecc484553142ca23264e593d327bcde5e9c3407"
  end

  resource "tmdbsimple" do
  	url "https://github.com/celiao/tmdbsimple/archive/2.9.1.tar.gz"
  	sha256 "905ec0fbf35beaece402beb119f7d062d41b9ba8c48ca9240afc964d98cffca6"
  end 

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    (bin+"mp4automator").write(cli_script)
    resource("subliminal").stage { system "python3", *Language::Python.setup_install_args(libexec/"vendor") }

    xy = Language::Python.major_minor_version "python3"
    ENV.prepend_create_path "PYTHONPATH", libexec/"vendor/lib/python#{xy}/site-packages"
    %w[babelfish beautifulsoup4 qtfaststart chardet click dogpile.cache dogpile.core enzyme guessit mutagen pbr pysrt python-dateutil idna requests six stevedore urllib3 certifi].each do |r|
      resource(r).stage do
        system "python3", *Language::Python.setup_install_args(libexec/"vendor")
      end
    end
  end

  def post_install
    (etc/"sickbeardmp4automator").mkpath
    #etc.install "#{libexec}/autoProcess.ini.sample" => etc/"sickbeardmp4automator/autoProcess.ini"
    libexec.install_symlink etc/"sickbeardmp4automator/autoProcess.ini" => "autoProcess.ini"
  end

  def cli_script
    xy = Language::Python.major_minor_version "python3"
    <<~EOS
      #!/bin/bash
      export PYTHONPATH="#{libexec}/vendor/lib/python#{xy}/site-packages:$PYTHONPATH"
      python3 "#{libexec}/manual.py" "$@"
    EOS
  end
end
