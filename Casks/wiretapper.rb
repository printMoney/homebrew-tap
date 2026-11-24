cask "wiretapper" do
  version "1.0.0-beta.3"
  sha256 "52ac9c009dee6c36c44af9f0495dbf7d226cef21f3776ffd80f05ca9a025cafa"

  url "https://github.com/printMoney/wiretapper/releases/download/v#{version}/Wiretapper.zip"
  name "Wiretapper"
  desc "Record internal system audio from the menu bar"
  homepage "https://github.com/printMoney/wiretapper"

  depends_on macos: :sonoma

  app "Wiretapper.app"

  uninstall quit: "io.github.printmoney.wiretapper"

  zap trash: [
    "~/Library/Caches/io.github.printmoney.wiretapper",
    "~/Library/HTTPStorages/io.github.printmoney.wiretapper",
    "~/Library/Preferences/io.github.printmoney.wiretapper.plist",
  ]
end
