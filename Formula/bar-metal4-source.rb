class BarMetal4Source < Formula
  desc "Contributor source snapshot for the experimental BAR Metal 4 port (not a game app)"
  homepage "https://github.com/yeojuny/BAR-Metal4"
  url "https://github.com/yeojuny/BAR-Metal4/releases/download/source-2026.10.23.1/bar-metal4-source-2026.10.23.1.tar.gz"
  version "2026.10.23.1"
  sha256 "3286f3d6b23ec43882738f194cb0d972a26aac56137dc6cb3a31eb9a5db5e20d"

  def install
    (share/"bar-metal4-source").install Dir["*"].reject { |p| p == "bin" }
    bin.mkpath
    (bin/"bar-metal4-source").write <<~SH
      #!/bin/sh
      printf '%s\n' 'Experimental contributor source kit; no playable BAR.app is installed.'
      printf '%s\n' '#{opt_share}/bar-metal4-source'
    SH
    (bin/"bar-metal4-source").chmod 0755
  end

  def caveats
    <<~EOS
      This package installs source and documentation, not BAR.app.
      Read #{opt_share}/bar-metal4-source/docs/REPRODUCING.md for build gaps.
      Cumulative correctness fixes through AI26; performance optimizations excluded.
    EOS
  end

  test do
    assert_match "no playable BAR.app", shell_output("#{bin}/bar-metal4-source")
    assert_path_exists share/"bar-metal4-source/SOURCE-MANIFEST.json"
  end
end
