class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.9.0/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "69e3ed1a0849b34a72a6736f5385425f02ac16ededd7b4d09bac83c3f00989ad"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.9.0/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "f645e7eb898357ba3ce55dff42da7eb03a2d9c2cde9b29a85387b7d3db7257e0"
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
