class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.6.0/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "32827db70a07442b9daf052641ffbe817bbabe191444a02cdbc7f9cfddd3ece5"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.6.0/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "f7dc21bcbb01058e14bec6886249c1e960912bd809acf90e5820696b0ec10a2e"
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
