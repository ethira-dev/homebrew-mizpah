class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.17.0/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "f587d595152da94720ff4d36a24623700a65f8b0fa04ada5a27b6d7e7ff49549"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.17.0/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "baa70e75fcda56421006105196c6089b9f517e269034fdab0eef605e440574b1"
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
