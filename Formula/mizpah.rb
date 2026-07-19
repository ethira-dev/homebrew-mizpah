class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.17.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.17.7/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "a3715e20973b5fbb9d83eb42731177342921734d6f6fbdcdcf0d962dbcfe2bc6"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.17.7/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "301a6288ecf810c4cca0b4f0a6d3ffb3cc52d0d0a301e686273e6dacee9442a8"
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
