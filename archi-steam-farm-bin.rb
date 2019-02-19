class ArchiSteamFarmBin < Formula
  desc "A C# (mono) application that allows you to farm steam cards using multiple steam accounts simultaneously."
  homepage "https://github.com/JustArchi/ArchiSteamFarm"
  url "https://github.com/JustArchiNET/ArchiSteamFarm/releases/download/4.0.0.8/ASF-generic.zip"
  sha256 "3b6967ee94ade610f51e695a20868163684d2c77f97f7d81afd9657fa11b0e4a"
  version "4.0.0.8"

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