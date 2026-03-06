cask "atoll" do
  version "2.0.0"
  sha256 "6866b917173c14411d11d6ee72a1d774fca6c4ab2f0db2ed833f47ec0ed21efd"

  url "https://github.com/Ebullioscopic/Atoll/releases/download/v2.0.0/Atoll.2.0.0.dmg"
  name "Atoll"
  desc "Turns the MacBook notch into a focused command surface for media, system insight, and quick utilities."
  homepage "https://github.com/Ebullioscopic/Atoll"

  auto_updates true

  app "Atoll.app"

  uninstall quit: "com.Ebullioscopic.Atoll"

  zap trash: [
    "~/Library/Preferences/com.Ebullioscopic.Atoll.plist"
  ]
end
