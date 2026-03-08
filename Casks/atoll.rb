cask "atoll" do
  version "2.0.1"
  sha256 "5daa903ffecc0b90436248161ed4fe269647c9832ffe04dffc345fe80e5d0ab8"

  url "https://github.com/Ebullioscopic/Atoll/releases/download/v2.0.1/Atoll.2.0.1.dmg"
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
