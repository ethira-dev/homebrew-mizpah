class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.4.0/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "a9f9e3124efcaa30ff2886b1092d3ba76d941064337e60ea07b7fe7c0c8ffe33"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.4.0/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "be0076feb21e0ae0981ae455754d2b0643c8724b853cdb1422cbd1498db13abd"
    end
  end

  def install
    bin.install "mizpah"
  end

  test do
    assert_match "mizpah", shell_output("#{bin}/mizpah --version")
  end
end
