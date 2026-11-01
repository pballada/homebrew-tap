cask "shinymac" do
  version "0.2.0"
  sha256 "19285a343ae4e877be0638a3c1573c612e9ec1bfa2c3b9d4c5fba8d42101ab17"

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
