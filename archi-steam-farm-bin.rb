class ArchiSteamFarmBin < Formula
  desc "A C# (mono) application that allows you to farm steam cards using multiple steam accounts simultaneously."
  homepage "https://github.com/JustArchi/ArchiSteamFarm"
  url "https://github.com/JustArchiNET/ArchiSteamFarm/releases/download/4.0.1.7/ASF-osx-x64.zip"
  sha256 "85f736240de4d1e7b7adbcab1daa8bd0531b8c95ef8ed9a26af5f8eb6053d488"
  version "4.0.1.7"

  bottle :unneeded

  depends_on "mono"

  def install
    libexec.install Dir["*"]
    chmod 0755, Dir["#{libexec}/ArchiSteamFarm"]
    rm_rf Dir["#{libexec}/config"]
    libexec.install_symlink etc/"archi-steam-farm" => "config"
  end

  def caveats; <<~EOS
    Config: #{etc}/archi-steam-farm/

    You can generate a configuration file via the web-based configurator here:
    https://justarchi.github.io/ArchiSteamFarm/

    EOS
  end

  test do
    assert_match "ASF V#{version}", shell_output("#{bin}/ArchiSteamFarm --client")
  end
end
