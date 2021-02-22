class ArchiSteamFarmBin < Formula
  desc "A C# (mono) application that allows you to farm steam cards using multiple steam accounts simultaneously."
  homepage "https://github.com/JustArchi/ArchiSteamFarm"
  url "https://github.com/JustArchiNET/ArchiSteamFarm/releases/download/5.0.3.2/ASF-osx-x64.zip"
  sha256 "c49789af20bdeb48d7a7e1350da4dc9f1b93bca9a98880635bfd14241ae86329"
  version "5.0.3.2"

  bottle :unneeded

  depends_on "mono"

  def install
    libexec.install Dir["*"]
    chmod 0755, Dir["#{libexec}/ArchiSteamFarm"]
    rm_rf Dir["#{libexec}/config"]
    libexec.install_symlink etc/asf => "config"
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
