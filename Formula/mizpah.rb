class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.15.0/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "901b6e3b6149daa3fb72ad289c4c3b14b06eaa176da411a3b892ed8e60a45254"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.15.0/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "e8e576078fef8b560e85db67c13f3e8fb8a63f06995c90533f304ab2df0a996e"
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
