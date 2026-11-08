cask "forest" do
  version "0.4.0"
  sha256 "f49d21a3dedb4a56c0999d648c6ec116b906e7ac14db3f6d11a755e43ee718a8"

  url "https://github.com/pballada/forest/releases/download/v#{version}/Forest-#{version}.zip"
  name "Forest"
  desc "Workspace for coding agents with embedded terminals and a Git client"
  homepage "https://github.com/pballada/forest"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Forest.app"

  zap trash: [
    "~/Library/Application Support/Forest",
    "~/Library/Caches/com.pballada.forest",
    "~/Library/HTTPStorages/com.pballada.forest",
    "~/Library/Preferences/com.pballada.forest.plist",
    "~/Library/Saved Application State/com.pballada.forest.savedState",
  ]
end
