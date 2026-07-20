class Starcat < Formula
  desc "Cross-platform CLI and MCP bridge for Starcat"
  homepage "https://github.com/starcat-app/starcat-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.0.0/starcat_v1.0.0_darwin_arm64.tar.gz"
      sha256 "25299af4146d29243b2f6122e6f92cf64a1b9f38b57efe37ed95018fd3b6a067"
    else
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.0.0/starcat_v1.0.0_darwin_amd64.tar.gz"
      sha256 "9d1c35b1b3f360061e66eaace8ed12bf1390d42f6956972c84bd47638dc682a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.0.0/starcat_v1.0.0_linux_arm64.tar.gz"
      sha256 "22d27bc71dbda5046890ffcc26fd80262824a9a7d39559d79fd802093b5ff847"
    else
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.0.0/starcat_v1.0.0_linux_amd64.tar.gz"
      sha256 "21fa49cf693a3c3170d88d118bde4ac537ed52d1f02e13225a72bad77925c71f"
    end
  end

  def install
    bin.install "starcat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/starcat version")
  end
end
