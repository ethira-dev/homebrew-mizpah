class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.12.0/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "3034c8c94642c5413eb6ab73ea540fb1cc1bdaf15140a20f2c78cee5019768fc"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.12.0/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "da09a3c7164b34b928181db26a56bbc2a74f6ecd4a5dbb6e1a2dad317eb102ad"
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
