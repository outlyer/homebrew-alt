class ArchiSteamFarmBin < Formula
  desc "A C# (mono) application that allows you to farm steam cards using multiple steam accounts simultaneously."
  homepage "https://github.com/JustArchi/ArchiSteamFarm"
  version "6.1.6.7"

  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  if Hardware::CPU.intel?
    sha256 "71119fa8d8fae470f80ae077ccd35979c4a3503d5ea65218fd7c5f556a8a2a86"
  else
    sha256 "31057ab83a84752312e6887d41b2e27c2230bd5ed40db9600738f7c6dd8b9414"
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
