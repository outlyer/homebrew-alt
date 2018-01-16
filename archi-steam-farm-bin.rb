class ArchiSteamFarmBin < Formula
  desc "A C# (mono) application that allows you to farm steam cards using multiple steam accounts simultaneously."
  homepage "https://github.com/JustArchi/ArchiSteamFarm"
  url "https://github.com/JustArchi/ArchiSteamFarm/releases/download/3.0.5.8/ASF-osx-x64.zip"
  sha256 "8e680e770ef431361f8b05684e6300258b60a9d9b7c235bdeb919156b62528a3"
  version "3.0.5.8"

  bottle :unneeded

  depends_on "mono"

  def install
    libexec.install Dir["*"]
    chmod 0755, Dir["#{libexec}/ArchiSteamFarm"]

    etc.install "#{libexec}/config" => "archi-steam-farm"
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