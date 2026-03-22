cask "atoll" do
  version "2.1.0"
  sha256 "add3a30d4e9bfa5cd180f2538c88d4cda047813dafe574fab5d0660087c3392b"

  url "https://github.com/Ebullioscopic/Atoll/releases/download/v#{version}/Atoll.#{version}.dmg"
  name "Atoll"
  desc "Turns the MacBook notch into a focused command surface for media, system insight, and quick utilities."
  homepage "https://github.com/Ebullioscopic/Atoll"

  auto_updates false

  app "Atoll.app"

  uninstall quit: "com.Ebullioscopic.Atoll"

  zap trash: [
    "~/Library/Preferences/com.Ebullioscopic.Atoll.plist"
  ]
end
