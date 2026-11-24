class Ritmos < Formula
  desc "Builds QuickToggles, a menu bar app with handy Mac toggles"
  homepage "https://github.com/printMoney/ritmos-personal-script"
  url "https://github.com/printMoney/ritmos-personal-script/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "6f2c47cc8dcad63ad1efcd2d936712cea6ff84fdbc703fe764011cbc0a15e083"
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
