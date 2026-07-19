class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.17.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.17.5/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "a7c23665651c3c6c8971cdbc571611b67b1ede48dd821010c791d51d25de1cdf"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.17.5/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "b34817caecdf68a3f22406c99af580ff59e3886acde6c69eebe7252993bd4c19"
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
