class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.9.2/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "e67e25cdd8d3e8bc8d166eb16e43c0e74891186280f3eaf4055c0d3de98dc551"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.9.2/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "a1a0a3bbc07cc17f0c254d7151e0e9d0a5d9b7265132e6796d3fcb1fe02919db"
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
