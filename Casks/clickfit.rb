cask "clickfit" do
  version "1.5.0"
  sha256 "741dea3e0c5a1325c57ece010509ece1deabfa9a2fd2199b058970db36014acd"

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
