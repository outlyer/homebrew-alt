cask "logui" do
  version "1.0.74"
  sha256 "2daa8d429c3448d0f1d2fa9423cd0ecdc853e363f1f37bdd9272da13e5ac8936"

  url "https://eclecticlight.co/wp-content/uploads/2025/09/logui174.zip"
  name "LogUI"
  desc "Accessible modern log browser, for macOS Sonoma and later"
  homepage "https://eclecticlight.co/consolation-t2m2-and-log-utilities/"

  auto_updates false
  depends_on macos: ">= :sonoma"

  app "logui174/LogUI.app"

  uninstall quit: "cco.eclecticlight.LogUI"

  zap trash: [
    "~/Library/Preferences/co.eclecticlight.LogUI.plist"
  ]
end
