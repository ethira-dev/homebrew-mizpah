class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.12.1/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "98d708371ce0805267ae62ec2277f535725d9c4f3f93e26d79070b106936d471"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.12.1/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "83ad1828ce40c0fe59e31321fc40044fc2f3fd3db68a3ddeebadae1212bc0029"
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
