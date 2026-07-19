class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.17.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.17.4/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "6ee53fe40da9f3e0b0829b08b751e2000f4d77482e73db2d6091c7818d0ab251"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.17.4/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "9ab5f6f63fbd1c41da74584c14b713b2ba2664fba575469605231a834ec571b8"
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
