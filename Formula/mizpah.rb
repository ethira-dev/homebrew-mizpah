class Mizpah < Formula
  desc "JSON log viewer — pipe logs and inspect them in a web UI"
  homepage "https://github.com/ethira-dev/mizpah"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.1.0/mizpah-aarch64-apple-darwin.tar.gz"
      sha256 "e0e6fadd4a5030ca7ae9be01d313547542bdfed3692dbba421e68c2688a27945"
    end
    on_intel do
      url "https://github.com/ethira-dev/mizpah/releases/download/v0.1.0/mizpah-x86_64-apple-darwin.tar.gz"
      sha256 "4d59764b28b71eb22e970ea44421e26d422a301dab51135072b151ffb3dccaf3"
    end
  end

  def install
    bin.install "mizpah"
  end

  test do
    assert_match "mizpah", shell_output("#{bin}/mizpah --version")
  end
end
