class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.17.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.17.2/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "019ab44c471478286c4647c263323502eca53ee0cc804c1e81591355194c0021"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.17.2/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "a236dbcd50c8cf928f8dfe47bf8775e1c7c8297c9c9d111197a8b86158c7f502"
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
