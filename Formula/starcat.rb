class Starcat < Formula
  desc "Cross-platform CLI and MCP bridge for Starcat"
  homepage "https://github.com/starcat-app/starcat-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.0.0/starcat_v1.0.0_darwin_arm64.tar.gz"
      sha256 "43ddffcb7e498da16d7e049c8287c8ce35da69cfeb04e71fdfbe5809b8b3928e"
    else
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.0.0/starcat_v1.0.0_darwin_amd64.tar.gz"
      sha256 "a4fe0db8ae45edaa71640d1b09e1ea2f5c43a0a0b7d54f648a65a03bc6738b33"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.0.0/starcat_v1.0.0_linux_arm64.tar.gz"
      sha256 "ce77a717bb5ef6b7a01c524a9ca121183716679c465e2a6177660f1d44d9e7b5"
    else
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.0.0/starcat_v1.0.0_linux_amd64.tar.gz"
      sha256 "8c449799d18d21a5942cd5752b05a3abcccce638c972184e6c50a956bd1115ea"
    end
  end

  def install
    bin.install "starcat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/starcat version")
  end
end
