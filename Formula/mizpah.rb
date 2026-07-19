class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.17.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.17.8/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "c5f072d23636e30abb2b1a6b244b20f95552bbb25b0d48907f842d270af3e9c7"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.17.8/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "fc3cef2ee12a5e63e3b7abb5743d27ddccbf1640dbf2767231fbef429f1e14d5"
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
