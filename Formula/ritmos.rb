class Ritmos < Formula
  desc "Builds QuickToggles, a menu bar app with handy Mac toggles"
  homepage "https://github.com/printMoney/ritmos-personal-script"
  url "https://github.com/printMoney/ritmos-personal-script/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6f85a5561abeb291ccb859aa526048a13fd11a77a3ff7cb1285d9b5bf2fe0ff6"
  license "MIT"
  head "https://github.com/printMoney/ritmos-personal-script.git", branch: "main"

  depends_on :macos

  def install
    bin.install "ritmos.sh" => "ritmos"
  end

  def caveats
    <<~EOS
      Run `ritmos` to build QuickToggles.app into ~/Applications and open it.
      After `brew upgrade ritmos`, run `ritmos` again to rebuild the app.

      This is a personal script, provided as-is: use at your own risk.
    EOS
  end

  test do
    system "bash", "-n", bin/"ritmos"
  end
end
