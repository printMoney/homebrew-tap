class Ritmos < Formula
  desc "Builds QuickToggles, a menu bar app with handy Mac toggles"
  homepage "https://github.com/printMoney/ritmos-personal-script"
  url "https://github.com/printMoney/ritmos-personal-script/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "fe16a5bc0843eb2b7dc7b8a5ea1e85cf86eb01ff53e7a997ae92fe44ba54633b"
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
