cask "shinymac" do
  version "0.5.0"
  sha256 "8a6d94c60ffe432e9bbe2e1259ba8c0f5151c59b4aaf9476018b7d509ce2abc9"

  url "https://github.com/pballada/shinyMac/releases/download/v#{version}/ShinyMac-#{version}.zip"
  name "ShinyMac"
  desc "System cleaner and complete app uninstaller"
  homepage "https://github.com/pballada/shinyMac"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "ShinyMac.app"

  zap trash: [
    "~/Library/Caches/com.pballada.shinymac",
    "~/Library/HTTPStorages/com.pballada.shinymac",
    "~/Library/Preferences/com.pballada.shinymac.plist",
    "~/Library/Saved Application State/com.pballada.shinymac.savedState",
  ]
end
