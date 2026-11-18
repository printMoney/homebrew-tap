cask "wiretapper" do
  version "1.0.0-beta.2"
  sha256 "b84860eb97fe32a9df62c767f4cafa6d8554c79ece83b4471ef9a3cd4f374cd2"

  url "https://github.com/printMoney/wiretapper/releases/download/v#{version}/Wiretapper.zip"
  name "Wiretapper"
  desc "Record your Mac's internal audio from the menu bar"
  homepage "https://github.com/printMoney/wiretapper"

  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "Wiretapper.app"

  zap trash: [
    "~/Library/Caches/io.github.printmoney.wiretapper",
    "~/Library/HTTPStorages/io.github.printmoney.wiretapper",
    "~/Library/Preferences/io.github.printmoney.wiretapper.plist",
  ]
end
