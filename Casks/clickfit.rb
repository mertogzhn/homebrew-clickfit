cask "clickfit" do
  version "2.0.3"
  sha256 "91406e5cb3b4a40be4cb813b31c80683a54cc5a95ce2d4d270d6f7cf81eac1cf"

  url "https://github.com/mertogzhn/ClickFitMac/releases/download/v#{version}/ClickFit-#{version}.dmg"
  name "ClickFit"
  desc "Every window, exactly where you want it"
  homepage "https://github.com/mertogzhn/ClickFitMac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "ClickFit.app"

  zap trash: [
    "~/Library/Containers/com.merto.clickfit",
    "~/Library/Application Scripts/com.merto.clickfit",
    "~/Library/HTTPStorages/com.merto.clickfit",
    "~/Library/Caches/com.merto.clickfit",
    "~/Library/Preferences/com.merto.clickfit.plist",
  ]
end
