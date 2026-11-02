cask "shinymac" do
  version "0.4.0"
  sha256 "2dc95a40684f5e98bd3500dcf00f4286e54de27b07674fd6fde6c48ae9ed1ad4"

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
