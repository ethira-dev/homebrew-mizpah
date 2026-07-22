class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.19.0/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "67ee0979ceff3c99bd00e69546b74719a983edd99c8aedde5cf9d47a34d87b18"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.19.0/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "582431d541b0491be8ef499929205fb850217c0a0b4330bbec38fc92b529c8bf"
    end
  end

  def install
    bin.install "mizpah"
    bin.install "mzp"
  end

  def caveats
    <<~EOS
      This tap is deprecated. Migrate to the org tap:

        brew untap ethira-dev/mizpah
        brew install ethira-dev/tap/mizpah
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mizpah --version")
  end
end
