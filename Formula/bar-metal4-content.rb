class BarMetal4Content < Formula
  desc "Pinned game content and test map for the experimental BAR Metal4 app"
  homepage "https://github.com/yeojuny/BAR-Metal4"
  url "https://github.com/yeojuny/BAR-Metal4/releases/download/app-2026.10.23.1/BAR-Metal4-content-2026.10.23.1.tar.gz"
  version "2026.10.23.1"
  sha256 "14843ab82855fa37507d00267ccb6d4c1029d1da869319ec494850c92cd53646"

  def install
    (share/"bar-metal4-content").install Dir["*"]
  end

  test do
    assert_path_exists share/"bar-metal4-content/packages/7a0e6ff2ee6f899654edd8cc997b5386.sdp"
    assert_path_exists share/"bar-metal4-content/maps/all_that_simmers_v1.1.1-local07.sd7"
  end
end
