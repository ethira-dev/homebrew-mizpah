class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.8.2/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "8e711a2cafcca773b524a350e3af7669ee29619287100ba4f3181c448b0ecdb4"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.8.2/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "09d69501437f396f0be1dbcde8ad09b6f48f363d84c90a1dc9e4abbcf89100f5"
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
