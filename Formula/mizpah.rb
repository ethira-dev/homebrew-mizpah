class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.9.1/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "f34a32d89deb93aee13e98f40ab7ed6131758a121426b144df751e8d6990dd0f"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.9.1/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "94313aa38fcaa4aeb75808bbf3ce0e0a582a52f93841a3adf0b0d2e8383b8a66"
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
