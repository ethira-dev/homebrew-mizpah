class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.16.0/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "ee9e8bffac8c1eeb24dee7e96aeb0291ab94bfd8c6d6eb29a463a34457a05226"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.16.0/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "0b8bc7a74366dc39d97b62738756a9f6a419f3b87e7d7ae7c1b46238e98d4d60"
    end
  end

  def install
    bin.install "mizpah"
    bin.install "mzp"
  end

  test do
    assert_match "mizpah", shell_output("#{bin}/mizpah --version")
    assert_match "mizpah", shell_output("#{bin}/mzp --version")
  end
end
