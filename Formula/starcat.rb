class Starcat < Formula
  desc "Cross-platform CLI and MCP bridge for Starcat"
  homepage "https://github.com/starcat-app/starcat-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.1.0/starcat_v1.1.0_darwin_arm64.tar.gz"
      sha256 "1458aa9aff9c56c004ba0e790ca90fc66ba34e80b42c1221ab0c9664d9d5af41"
    else
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.1.0/starcat_v1.1.0_darwin_amd64.tar.gz"
      sha256 "5c901f6db7e43ad13eb5dfcfd04b052e5463a82fbcd8f5436d87600846b26b30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.1.0/starcat_v1.1.0_linux_arm64.tar.gz"
      sha256 "82aa7c8e1b03c21543c1088f9147cac824fdbb2f352582287541f9f20fd069a2"
    else
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.1.0/starcat_v1.1.0_linux_amd64.tar.gz"
      sha256 "20cfaab43e42c30841f8a98642fe21efcd08ccf0cfd43341dd907cddfe923380"
    end
  end

  def install
    bin.install "starcat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/starcat version")
  end
end
