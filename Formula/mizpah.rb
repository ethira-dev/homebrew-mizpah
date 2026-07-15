class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.3.0/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "c028ebeb783cccf658c2b0a3f91a122d66ab7707c6eb78a12302ad3cbb306717"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.3.0/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "b05fe314e8ad426ab43dc9bac04cc481ab457ff363d6cd22e0a02bdf739b67c5"
    end
  end

  def install
    bin.install "mizpah"
  end

  test do
    assert_match "mizpah", shell_output("#{bin}/mizpah --version")
  end
end
