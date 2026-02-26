cask "atoll" do
  version "1.3.0-beta"
  sha256 "9d4f210f379cb33a1d60f4e8088e0e03e08b4f45140b051914274bb22ab59d5f"

  url "https://github.com/Ebullioscopic/Atoll/releases/download/v1.3.0-beta/Atoll.1.3.0-beta.dmg"
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
