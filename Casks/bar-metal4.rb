cask "bar-metal4" do
  version "2026.10.23.1"
  sha256 "f8035e6cc674dba6d57f1502f8c286920d21a52a0094130e4b5f4a03b9b2e3c6"

  url "https://github.com/yeojuny/BAR-Metal4/releases/download/app-#{version}/BAR-Metal4-#{version}-arm64.zip"
  name "BAR Metal4"
  desc "Experimental native Metal 4 BAR app, pre-performance correctness baseline"
  homepage "https://github.com/yeojuny/BAR-Metal4"

  depends_on arch: :arm64
  depends_on macos: :golden_gate
  depends_on formula: "yeojuny/bar-metal4/bar-metal4-content"

  app "BAR Metal4.app"

  caveats <<~EOS
    First launch prepares about 2 GB of game data in:
      ~/Library/Application Support/BAR-Metal4
    This experimental app is ad-hoc signed, not Apple notarized.
    If macOS blocks opening, approve this app in Privacy & Security.
    Public multiplayer and full visual parity are not accepted.
  EOS
end
