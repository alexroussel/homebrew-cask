cask "tower" do
  version "6.1,258:9c97138e"
  sha256 "55e9e9ecab7f9315dc0b367ddb61e444ed88eb20f0f133de0d2c0b13e5b848ad"

  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower3-mac/#{version.after_comma.before_colon}-#{version.after_colon}/Tower-#{version.before_comma}-#{version.after_comma.before_colon}.zip",
      verified: "fournova-app-updates.s3.amazonaws.com/"
  appcast "https://updates.fournova.com/updates/tower3-mac/stable"
  name "Tower"
  desc "Git client focusing on power and productivity"
  homepage "https://www.git-tower.com/"

  auto_updates true

  app "Tower.app"
  binary "#{appdir}/Tower.app/Contents/MacOS/gittower"

  zap trash: [
    "~/Library/Application Support/com.fournova.Tower*",
    "~/Library/Caches/com.fournova.Tower*",
    "~/Library/Preferences/com.fournova.Tower*.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.fournova.tower*.sfl2",
  ]
end
