cask "bar-metal4" do
  version "1.11.1"
  sha256 "2180a82b5b2791c01d1065bcb762d28fcb85350e2d836163258d808112aec12f"

  url "https://github.com/yeojuny/BAR-Metal4/releases/download/v#{version}/BAR-Metal4-#{version}-arm64.zip"
  name "BAR Metal4"
  desc "Experimental native Metal 4 BAR for Apple Silicon"
  homepage "https://github.com/yeojuny/BAR-Metal4"

  depends_on arch: :arm64
  depends_on macos: :golden_gate
  depends_on formula: "yeojuny/bar-metal4/bar-metal4-content"

  app "BAR Metal4.app"

  caveats <<~EOS
    Defaults: anti-aliasing 0x, VSync off. Existing user settings are preserved.
    First launch copies the installed game content locally into:
      ~/Library/Application Support/BAR-Metal4
    Allow at least 10 GB free. No GitHub authentication is required.
    Ad-hoc signed, not Apple notarized; approve in Privacy & Security if blocked.
    Experimental single-player; public multiplayer/full pixel parity unverified.
  EOS
end
