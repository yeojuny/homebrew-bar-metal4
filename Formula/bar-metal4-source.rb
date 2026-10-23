class BarMetal4Source < Formula
  desc "Contributor source snapshot for the experimental BAR Metal 4 port (not a game app)"
  homepage "https://github.com/yeojuny/BAR-Metal4"
  url "https://github.com/yeojuny/BAR-Metal4/releases/download/source-2026.10.19/bar-metal4-source-2026.10.19.tar.gz"
  version "2026.10.19"
  sha256 "55f3797ef2223a311a62d5f235d5b739924ebf6088974a4dcdb78caa3a58029d"

  def install
    (share/"bar-metal4-source").install Dir["*"].reject { |p| p == "bin" }
    (bin/"bar-metal4-source").write <<~SH
      #!/bin/sh
      printf '%s\n' 'Experimental contributor source kit; no playable BAR.app is installed.'
      printf '%s\n' '#{opt_share}/bar-metal4-source'
    SH
  end

  def caveats
    <<~EOS
      This package installs source and documentation, not BAR.app.
      Read #{opt_share}/bar-metal4-source/docs/REPRODUCING.md for build gaps.
      The source snapshot predates the latest local performance experiments.
    EOS
  end

  test do
    assert_match "no playable BAR.app", shell_output("#{bin}/bar-metal4-source")
    assert_path_exists share/"bar-metal4-source/SOURCE-MANIFEST.json"
  end
end
