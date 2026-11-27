cask "bar-metal4" do
  version "1.11.61"
  sha256 "83f6074fc6949d568a3c96dd1df7951dba99c0ba5144b888037573847ec7a41a"

  url "https://github.com/yeojuny/BAR-Metal4/releases/download/v#{version}/BAR-Metal4-#{version}-arm64.zip"
  name "BAR Metal4"
  desc "Experimental native Metal 4 BAR for Apple Silicon"
  homepage "https://github.com/yeojuny/BAR-Metal4"

  depends_on arch: :arm64
  depends_on macos: :golden_gate
  depends_on formula: "yeojuny/bar-metal4/bar-metal4-content"

  app "BAR Metal4.app"

  caveats <<~EOS
    Requires macOS 27.2 or later.
    Defaults: health bar scale and height 2x, anti-aliasing off, VSync off.
    First launch copies the installed game content locally into:
      ~/Library/Application Support/BAR-Metal4
    Allow at least 10 GB free. No GitHub authentication is required.
    Ad-hoc signed; approve in Privacy & Security if blocked.
    Experimental single-player.
  EOS
end
