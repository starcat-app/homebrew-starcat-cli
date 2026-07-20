class Starcat < Formula
  desc "Cross-platform CLI and MCP bridge for Starcat"
  homepage "https://github.com/starcat-app/starcat-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.0.0/starcat_v1.0.0_darwin_arm64.tar.gz"
      sha256 "405eb183a2817dec50e0329f4c1189ceb93e03cda943eb898b052501693f7ae8"
    else
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.0.0/starcat_v1.0.0_darwin_amd64.tar.gz"
      sha256 "577f3b03d3feee812f60bd83fedd44cb127563ac2264687db8aa07ed6646d884"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.0.0/starcat_v1.0.0_linux_arm64.tar.gz"
      sha256 "095c41d053dc98c07c4245c877b02b48f941fcef647d1de0437a64b78203061a"
    else
      url "https://github.com/starcat-app/starcat-cli/releases/download/v1.0.0/starcat_v1.0.0_linux_amd64.tar.gz"
      sha256 "9ffb11ca4bc7927ba531f2d0700d7f604011b9d201a8db45907c1287a8dd49ec"
    end
  end

  def install
    bin.install "starcat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/starcat version")
  end
end
