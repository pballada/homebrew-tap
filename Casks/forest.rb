cask "forest" do
  version "0.5.0"
  sha256 "6cbd93a3137575e61bf3380f148b6a4ad34949461fcd78fa84ead0cc8077aa2c"

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

