cask "clickfit" do
  version "1.5.3"
  sha256 "7e11e93cf66e2a67d141beffb0960aaed8bf7ae81c9fed4ab1c6cb6b5b6ed6ea"

  url "https://github.com/mertogzhn/ClickFitMac/releases/download/v#{version}/ClickFit-#{version}.dmg"
  name "ClickFit"
  desc "Every window, exactly where you want it"
  homepage "https://github.com/mertogzhn/ClickFitMac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "ClickFit.app"

  zap trash: [
    "~/Library/Containers/com.merto.clickfit",
    "~/Library/Application Scripts/com.merto.clickfit",
    "~/Library/HTTPStorages/com.merto.clickfit",
    "~/Library/Caches/com.merto.clickfit",
    "~/Library/Preferences/com.merto.clickfit.plist",
  ]
end
