class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.2.0/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "c0c6aab36a7578d32ba97d37aefc9566ae0d7b54f31fa8a4ef362bb88c5805a9"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.2.0/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "55a9a9bccd3a60d77a423d80f4815eb2124965d60d7628c68b209bc4c5ed9138"
    end
  end

  def install
    bin.install "mizpah"
  end

  test do
    assert_match "mizpah", shell_output("#{bin}/mizpah --version")
  end
end
