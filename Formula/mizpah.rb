class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.12.2/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "9487cc036993c8a1c3a83954ca503e94151d6eafed00c64a4680bbed52f78483"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.12.2/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "7fa317a58c4f2e2aecad801bb059e32c1d82e61cf4dd513cf74efc46fb633611"
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
