class Mizpah < Formula
  desc "JSON log viewer with web UI and MCP for AI agents"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.17.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.17.6/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "e37a9db336d7c29368d30423a042f8bfed9b37e0ecc2416961e84c939453aa4f"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.17.6/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "4fd7b96a10d9c5661d77ae20fc4d0882f1d56ed32c736ef013fed82f4a427b65"
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
