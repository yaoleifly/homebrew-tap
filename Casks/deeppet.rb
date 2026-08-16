cask "deeppet" do
  version "1.0.2"
  sha256 "27c6fba4eac7a858b3d645dd2a580f0970da8bd1b49006252165c10cfb42017d"

  url "https://github.com/yaoleifly/DeepPet/releases/download/v#{version}/DeepPet.dmg"
  name "DeepPet"
  desc "Lightweight, GPU-accelerated macOS menu bar companion for DeepSeek Harness"
  homepage "https://github.com/yaoleifly/DeepPet"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "DeepPet.app"

  uninstall quit: "com.dsh.deeppet"

  zap trash: [
    "~/.dsh/profiles/web/.backup_snapshot",
    "~/Library/Preferences/com.dsh.deeppet.plist",
  ]
end
