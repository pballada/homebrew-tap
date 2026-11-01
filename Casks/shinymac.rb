cask "shinymac" do
  version "0.3.0"
  sha256 "16e7ff9af697fb868bf1750dc29b926f37f246b15e1b8851bd4c667816fe56be"

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
