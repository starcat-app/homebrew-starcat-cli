class Starcat < Formula
  desc "Cross-platform CLI and MCP bridge for Starcat"
  homepage "https://github.com/starcat-app/starcat-cli"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starcat-app/starcat-cli/releases/download/v2.0.0/starcat_v2.0.0_darwin_arm64.tar.gz"
      sha256 "26a3238a4f5d09482e6be2651a723384a77f8c7d8c7fa228ff757d09d8fb9658"
    else
      url "https://github.com/starcat-app/starcat-cli/releases/download/v2.0.0/starcat_v2.0.0_darwin_amd64.tar.gz"
      sha256 "442a4fe7a8d5699f03a148592871f2b9aa30e1c350a3594369ceffb953bf7cc9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/starcat-app/starcat-cli/releases/download/v2.0.0/starcat_v2.0.0_linux_arm64.tar.gz"
      sha256 "ec603d8d1691f8fdb2f9a7de31e2e13650dc820c814b940e841dafc3ee4ba94f"
    else
      url "https://github.com/starcat-app/starcat-cli/releases/download/v2.0.0/starcat_v2.0.0_linux_amd64.tar.gz"
      sha256 "e5d3d36389b4132d13ef6d35be74f6684b9350d4491b0d94bc8255e3b4b839ba"
    end
  end

  def install
    bin.install "starcat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/starcat version")
  end
end
