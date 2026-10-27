cask "opensave" do
  version "2.4.1"
  sha256 "7a7db46c48879075a8a787f25896793640b871063f8eac136ffacd59567201d7"

  url "https://github.com/Liquid-co/OpenSave/releases/download/v#{version}/OpenSave-macos.dmg"
  name "OpenSave"
  desc "Sync your game saves between devices, peer-to-peer."
  homepage "https://github.com/celogeek/go-comic-converter"

  depends_on :macos
  app "OpenSave.app"

  zap trash: [
    "~/Library/Preferences/OpenSave.plist",
    "~/Library/Preferences/com.wails.OpenSave.plist",
    "~Library/WebKit/com.wails.OpenSave/",
    "~/Library/WebKit/OpenSave/"
  ]
end
