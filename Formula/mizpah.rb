class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.13.0/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "43322935afe8e9172dc41e5a50e3a28514633ceeccb9b297e42cc33d34774219"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.13.0/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "22e152b05ac1439907e0e96cdb08c30a3c46981f52f8624e48c193d753ac641c"
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
