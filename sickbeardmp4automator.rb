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
    url "https://files.pythonhosted.org/packages/23/7b/37a477bc668068c23cb83e84191ee03709f1fa24d957b7d95083f10dda14/beautifulsoup4-4.8.0.tar.gz"
    sha256 "25288c9e176f354bf277c0a10aa96c782a6a18a17122dba2e8cec4a97e03343b"
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
    url "https://files.pythonhosted.org/packages/29/e2/f850b80eac4937c6d9ea6a24fac3764d951d82eb5f3e9a8ccd6ac24d70f8/dogpile.cache-0.8.0.tar.gz"
    sha256 "70f5eae4aec908f76188a2c287e07105f60c05d879bb9a4efcc5ba44563d8de6"
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
    url "https://pypi.python.org/packages/source/g/guessit/guessit-1.0.3.tar.gz"
    sha256 "8160423fd90febab78f2d78daff0ad86b41b2db96fb4834882b81abdb3a76be4"
  end

  resource "pbr" do
    url "https://files.pythonhosted.org/packages/99/f1/7807d3409c79905a907f1c616d910c921b2a8e73c17b2969930318f44777/pbr-5.4.3.tar.gz"
    sha256 "2c8e420cd4ed4cec4e7999ee47409e876af575d4c35a45840d59e8b5f3155ab8"
  end

  resource "pysrt" do
    url "https://pypi.python.org/packages/f6/33/16ad65a8973cb8bcb494af09ee1b9ab5ffdd6ff300bce5d3ac7d3cb1f2cc/pysrt-1.1.1.tar.gz"
    sha256 "fb4c10424549fc5a32d19cd5091f00316b875461fcd79a7809bb55056974d0aa"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/ad/99/5b2e99737edeb28c71bcbec5b5dda19d0d9ef3ca3e92e3e925e7c0bb364c/python-dateutil-2.8.0.tar.gz"
    sha256 "c89805f6f4d64db21ed966fda138f8a5ed7a4fdbc1a8ee329ce1b74e3c74da9e"
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
    url "https://pypi.python.org/packages/source/s/subliminal/subliminal-1.1.1.tar.gz"
    sha256 "ab50cff2dcdc4c302f11074d22b2aa8b1c12bbd13e81ee7ad362947a18ad3fca"
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
    %w[babelfish beautifulsoup4 qtfaststart chardet click dogpile.cache dogpile.core enzyme guessit pbr pysrt python-dateutil idna requests six stevedore urllib3 certifi].each do |r|
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
