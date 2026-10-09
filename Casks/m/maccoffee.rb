cask "maccoffee" do
  version "2.0.4"
  sha256 "66cc47d8cd1c03f771397ac85e2e5c0360055096e2dae6fa028ab44322a6047e"

  url "https://github.com/rekurt/Mac-Coffee/releases/download/v#{version}/MacCoffee-#{version}.dmg"
  name "Mac Coffee"
  desc "Utility to prevent idle sleep"
  homepage "https://rekurt.github.io/Mac-Coffee/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Mac Coffee.app"

  uninstall quit: "com.rekurt.maccoffee.direct"

  zap trash: [
    "~/Library/Caches/com.rekurt.maccoffee.direct",
    "~/Library/HTTPStorages/com.rekurt.maccoffee.direct*",
    "~/Library/Preferences/com.rekurt.maccoffee.direct.plist",
  ]
end
