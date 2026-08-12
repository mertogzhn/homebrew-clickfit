cask "clickfit" do
  version "2.0.0"
  sha256 "68a01a92fdb2484733e991bed69d1450daf29a1b315c6d75e5a06066325d0e65"

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
