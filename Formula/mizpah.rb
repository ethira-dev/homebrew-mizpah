class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.8.0/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "37c7ca64af7b2599dfec7095bba9ef31e9371ca2920ca3a04c02eecc58dcaa4a"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.8.0/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "2c56c5170c65a60040da799e6e19e3b7af549ee52358a034b6fd816da0187516"
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
