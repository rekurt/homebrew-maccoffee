cask "maccoffee" do
  version "2.0.2"
  sha256 "519d60fcb325d65ab8f77c603112020a7f21e48e9d40551b96a669667064d032"

  url "https://rekurt.github.io/maccoffee-dist/MacCoffee-#{version}.dmg"
  name "Mac Coffee"
  desc "Utility to prevent idle sleep"
  homepage "https://rekurt.github.io/maccoffee-dist/"

  livecheck do
    url "https://rekurt.github.io/maccoffee-dist/"
    regex(/MacCoffee[ ._-]v?(\d+(?:\.\d+)+)\.dmg/i)
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
