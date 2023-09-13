class ArchiSteamFarmBin < Formula
  desc "A C# (mono) application that allows you to farm steam cards using multiple steam accounts simultaneously."
  homepage "https://github.com/JustArchi/ArchiSteamFarm"
  version "5.4.9.3"

  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  if Hardware::CPU.intel?
    sha256 "a4d3a097b4eeebaf6c5b089c89c2a7c6804540007fde46e3cef731da3ca20e40"
  else
    sha256 "cfb96dbc7504a763cccdf0233a5073aa46409b6a2b423b4768b712ff906f29c7"
  end
  url "https://github.com/JustArchiNET/ArchiSteamFarm/releases/download/#{version}/ASF-osx-#{arch}.zip"

  def install
    libexec.install Dir["*"]
    chmod 0755, Dir["#{libexec}/ArchiSteamFarm"]
    rm_rf Dir["#{libexec}/config"]
    libexec.install_symlink etc/"asf" => "config"
  end

  def caveats; <<~EOS
    Config: #{etc}/archi-steam-farm/

    You can generate a configuration file via the web-based configurator here:
    https://justarchinet.github.io/ASF-WebConfigGenerator/

    EOS
  end

  test do
    assert_match "ASF V#{version}", shell_output("#{bin}/ArchiSteamFarm --client")
  end
end
