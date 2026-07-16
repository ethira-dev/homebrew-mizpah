class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.10.1/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "f1922f523748ccf1c3024b0fadbc43f18a537e3add272d8812331e8cc710b9d2"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.10.1/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "3736b6697b00161a0a0dfb8f682b034c74596373eeb6631f236f3333c9c4bf23"
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
