class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.18.1/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "904559471edd7ffaee40882323ed035e687050cc4bba534c7ba228e1531a4234"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.18.1/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "5430410175ebeffb0536b5ca7bb2a20d856d83683f7685aea2a66b7258713581"
    end
  end

  def install
    bin.install "mizpah"
    bin.install "mzp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mizpah --version")
  end
end
