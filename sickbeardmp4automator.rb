class Sickbeardmp4automator < Formula
  desc "Automatically convert video files to a standardized mp4 format with proper metadata tagging to create a beautiful and uniform media library"
  homepage "https://github.com/mdhiggins/sickbeard_mp4_automator"
  head "https://github.com/mdhiggins/sickbeard_mp4_automator.git"

  depends_on "python3"

  resource "babelfish" do
    url "https://pypi.python.org/packages/source/b/babelfish/babelfish-0.5.5.tar.gz"
    sha256 "8380879fa51164ac54a3e393f83c4551a275f03617f54a99d70151358e444104"
  end

  resource "beautifulsoup4" do
    url "https://pypi.python.org/packages/fa/8d/1d14391fdaed5abada4e0f63543fef49b8331a34ca60c88bd521bcf7f782/beautifulsoup4-4.6.0.tar.gz"
    sha256 "808b6ac932dccb0a4126558f7dfdcf41710dd44a4ef497a0bb59a77f9f078e89"
  end

  resource "chardet" do
    url "https://pypi.python.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "click" do
    url "https://pypi.python.org/packages/95/d9/c3336b6b5711c3ab9d1d3a80f1a3e2afeb9d8c02a7166462f6cc96570897/click-6.7.tar.gz"
    sha256 "f15516df478d5a56180fbf80e68f206010e6d160fc39fa508b65e035fd75130b"
  end

  resource "dogpile.cache" do
    url "https://pypi.python.org/packages/b6/3d/35c05ca01c070bb70d9d422f2c4858ecb021b05b21af438fec5ccd7b945c/dogpile.cache-0.6.4.tar.gz"
    sha256 "a73aa3049cd88d7ec57a1c2e8946abdf4f14188d429c1023943fcc55c4568da1"
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
    url "https://pypi.python.org/packages/d5/d6/f2bf137d71e4f213b575faa9eb426a8775732432edb67588a8ee836ecb80/pbr-3.1.1.tar.gz"
    sha256 "05f61c71aaefc02d8e37c0a3eeb9815ff526ea28b3b76324769e6158d7f95be1"
  end

  resource "pysrt" do
    url "https://pypi.python.org/packages/f6/33/16ad65a8973cb8bcb494af09ee1b9ab5ffdd6ff300bce5d3ac7d3cb1f2cc/pysrt-1.1.1.tar.gz"
    sha256 "fb4c10424549fc5a32d19cd5091f00316b875461fcd79a7809bb55056974d0aa"
  end

  resource "python-dateutil" do
    url "https://pypi.python.org/packages/54/bb/f1db86504f7a49e1d9b9301531181b00a1c7325dc85a29160ee3eaa73a54/python-dateutil-2.6.1.tar.gz"
    sha256 "891c38b2a02f5bb1be3e4793866c8df49c7d19baabf9c1bad62547e0b4866aca"
  end

  resource "requests" do
    url "https://pypi.python.org/packages/b0/e1/eab4fc3752e3d240468a8c0b284607899d2fbfb236a56b7377a329aa8d09/requests-2.18.4.tar.gz"
    sha256 "9c443e7324ba5b85070c4a818ade28bfabedf16ea10206da1132edaa6dda237e"
  end

  resource "six" do
    url "https://pypi.python.org/packages/16/d8/bc6316cf98419719bd59c91742194c111b6f2e85abac88e496adefaf7afe/six-1.11.0.tar.gz"
    sha256 "70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9"
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
    url "https://pypi.python.org/packages/ee/11/7c59620aceedcc1ef65e156cc5ce5a24ef87be4107c2b74458464e437a5d/urllib3-1.22.tar.gz"
    sha256 "cc44da8e1145637334317feebd728bd869a35285b93cbb4cca2577da7e62db4f"
  end

  resource "qtfaststart" do
    url "https://pypi.python.org/packages/source/q/qtfaststart/qtfaststart-1.8.tar.gz"
    sha256 "b0442315311f1c1130a34e4e6b04557f5f4aa332ac40bfb1d761418866749241"
  end

  resource "certifi" do
    url "https://pypi.python.org/packages/15/d4/2f888fc463d516ff7bf2379a4e9a552fef7f22a94147655d9b1097108248/certifi-2018.1.18.tar.gz"
    sha256 "edbc3f203427eef571f79a7692bb160a2b0f7ccaa31953e99bd17e307cf63f7d"
  end
  
  resource "idna" do
    url "https://pypi.python.org/packages/f4/bd/0467d62790828c23c47fc1dfa1b1f052b24efdf5290f071c7a91d0d82fd3/idna-2.6.tar.gz"
    sha256 "2c6a5de3089009e3da7c5dde64a141dbc8551d5b7f6cf4ed7c2568d0cc520a8f"
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
      python "#{libexec}/manual.py" "$@"
    EOS
  end
end
