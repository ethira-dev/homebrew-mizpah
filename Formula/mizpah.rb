class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.17.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.17.9/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "760932c1f37b908a31435175da0c6ed0ada53cc676c268145bf27ee5395bcc30"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.17.9/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "1f5a61156d3e0c05756f314181de31e3316ab72d3b10703723835497ff0dba6b"
    end
  end

  def install
    bin.install "mizpah"
    bin.install "mzp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mizpah --version")
  end
end
