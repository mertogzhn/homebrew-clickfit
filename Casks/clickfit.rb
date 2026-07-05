cask "clickfit" do
  version "1.5.2"
  sha256 "4c119e81a91ab479e229dd509a26dadc1385a65caa5125a3901143ce574cb2c1"

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
