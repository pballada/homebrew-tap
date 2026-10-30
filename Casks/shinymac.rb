cask "shinymac" do
  version "0.1.0"
  sha256 "7324ad0c07f3554d3f169b7b3418d7e0459de2db9a4f6b7557505675a32a3939"

  url "https://github.com/pballada/shinyMac/releases/download/v#{version}/ShinyMac-#{version}.zip"
  name "ShinyMac"
  desc "Open-source Mac cleaner and complete app uninstaller"
  homepage "https://github.com/pballada/shinyMac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "ShinyMac.app"

  zap trash: [
    "~/Library/Caches/com.pballada.shinymac",
    "~/Library/HTTPStorages/com.pballada.shinymac",
    "~/Library/Preferences/com.pballada.shinymac.plist",
    "~/Library/Saved Application State/com.pballada.shinymac.savedState",
  ]
end
