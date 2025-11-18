cask "logui" do
  version "1.0.77"
  sha256 "5d398ff4bf523abdf04d2307b74535693e214fbb2266d74312b5bfee6628d4f6"

  url "https://eclecticlight.co/wp-content/uploads/2025/10/logui177.zip"
  name "LogUI"
  desc "Accessible modern log browser, for macOS Sonoma and later"
  homepage "https://eclecticlight.co/consolation-t2m2-and-log-utilities/"

  auto_updates false
  depends_on macos: ">= :sonoma"

  app "logui177/LogUI.app"

  uninstall quit: "cco.eclecticlight.LogUI"

  zap trash: [
    "~/Library/Preferences/co.eclecticlight.LogUI.plist"
  ]
end
