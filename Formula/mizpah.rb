class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.7.0/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "bf379af5fcf24c63048c68ac0fdf5d0d050a245db112330269912ed44ee03b6b"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.7.0/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "175f382b29fb20add192dc45c2c8038a78f87358c6b86a77d64add1f55c93ca7"
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
