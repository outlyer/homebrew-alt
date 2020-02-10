class Sickbeardmp4automator < Formula
  desc "Automatically convert video files to a standardized mp4 format with proper metadata tagging to create a beautiful and uniform media library"
  homepage "https://github.com/mdhiggins/sickbeard_mp4_automator"
  head "https://github.com/mdhiggins/sickbeard_mp4_automator.git"

  depends_on "python3"
  depends_on "outlyer/alt/ffmpeg"

  resource "babelfish" do
    url "https://pypi.python.org/packages/source/b/babelfish/babelfish-0.5.5.tar.gz"
    sha256 "8380879fa51164ac54a3e393f83c4551a275f03617f54a99d70151358e444104"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/52/ba/0e121661f529e7f456e903bf5c4d255b8051d8ce2b5e629c5212efe4c3f1/beautifulsoup4-4.8.2.tar.gz"
    sha256 "05fd825eb01c290877657a56df4c6e4c311b3965bda790c613a3d6fb01a5462a"
  end

  resource "chardet" do
    url "https://pypi.python.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/f8/5c/f60e9d8a1e77005f664b76ff8aeaee5bc05d0a91798afd7f53fc998dbc47/Click-7.0.tar.gz"
    sha256 "5b94b49521f6456670fdb30cd82a4eca9412788a93fa6dd6df72c94d5a8ff2d7"
  end

  resource "dogpile.cache" do
    url "https://files.pythonhosted.org/packages/ac/6a/9ac405686a94b7f009a20a50070a5786b0e1aedc707b88d40d0c4b51a82e/dogpile.cache-0.9.0.tar.gz"
    sha256 "b348835825c9dcd251d9aad1f89f257277ac198a3e35a61980ab4cb28c75216b"
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
    url "https://pypi.python.org/packages/source/g/guessit/guessit-3.1.0.tar.gz"
    sha256 "2dcd3f2acaf6c1a864f903f084ddd6a6b753f3107ae864355d7c8c1e9cb205b2"
  end

  resource "mutagen" do
    url "https://files.pythonhosted.org/packages/96/9f/280220926cabbf4822f80e094a5190fb3df245209648e169c8bcf708697b/mutagen-1.44.0.tar.gz"
    sha256 "56065d8a9ca0bc64610a4d0f37e2bd4453381dde3226b8835ee656faa3287be4"
  end

  resource "pbr" do
    url "https://files.pythonhosted.org/packages/98/8a/defa5215d2dcf98cc80f4783e951a8356e38f352f7a169ae11670dcb1f25/pbr-5.4.4.tar.gz"
    sha256 "139d2625547dbfa5fb0b81daebb39601c478c21956dc57e2e07b74450a8c506b"
  end

  resource "pysrt" do
    url "https://files.pythonhosted.org/packages/31/1a/0d858da1c6622dcf16011235a2639b0a01a49cecf812f8ab03308ab4de37/pysrt-1.1.2.tar.gz"
    sha256 "b4f844ba33e4e7743e9db746492f3a193dc0bc112b153914698e7c1cdeb9b0b9"
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

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/4c/13/2386233f7ee40aa8444b47f7463338f3cbdf00c316627558784e3f542f07/urllib3-1.25.3.tar.gz"
    sha256 "dbe59173209418ae49d485b87d1681aefa36252ee85884c31346debd19463232"
  end

  resource "qtfaststart" do
    url "https://pypi.python.org/packages/source/q/qtfaststart/qtfaststart-1.8.tar.gz"
    sha256 "b0442315311f1c1130a34e4e6b04557f5f4aa332ac40bfb1d761418866749241"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/06/b8/d1ea38513c22e8c906275d135818fee16ad8495985956a9b7e2bb21942a1/certifi-2019.3.9.tar.gz"
    sha256 "b26104d6835d1f5e49452a26eb2ff87fe7090b89dfcaee5ea2212697e1e1d7ae"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ad/13/eb56951b6f7950cadb579ca166e448ba77f9d24efc03edd7e55fa57d04b7/idna-2.8.tar.gz"
    sha256 "c357b3f628cf53ae2c4c05627ecc484553142ca23264e593d327bcde5e9c3407"
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
    etc.install "#{libexec}/autoProcess.ini.sample" => etc/"sickbeardmp4automator/autoProcess.ini"
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
