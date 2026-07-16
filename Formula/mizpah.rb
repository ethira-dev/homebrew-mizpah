class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.5.0/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "c1e22e278ee80351b6bf036551c1ab8646321ca42f8327d90898c50dacf2f6a2"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.5.0/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "519cd7bd57952d40e5eeaf1df642ee21cfbbf0ac0fc81b000d9cdcb41d32f265"
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
