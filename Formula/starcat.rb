class Starcat < Formula
  desc "Cross-platform CLI and MCP bridge for Starcat"
  homepage "https://github.com/starcat-app/starcat-cli"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.1.1/starcat_v1.1.1_darwin_arm64.tar.gz"
      sha256 "06a06b6e6a83e235c985a8abaf4d8255bcfbd7043856969c3a678f3e2edca8f9"
    else
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.1.1/starcat_v1.1.1_darwin_amd64.tar.gz"
      sha256 "bee83c5f9b60618f5de154b05b8fc18411b6f59385f6d95cfdb913826a894db6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.1.1/starcat_v1.1.1_linux_arm64.tar.gz"
      sha256 "d6e151643e3b8fad2235e4b0a0b04b02fd461a2622f6286053d977d65f82499d"
    else
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.1.1/starcat_v1.1.1_linux_amd64.tar.gz"
      sha256 "a6f0f194da6e91eddaf49fb14693b0dfe8630d2da0caac76508c851047a22db1"
    end
  end

  def install
    bin.install "starcat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/starcat version")
  end
end
