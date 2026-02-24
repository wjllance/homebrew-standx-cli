class StandxCli < Formula
  desc "CLI tool for StandX perpetual DEX"
  homepage "https://github.com/wjllance/standx-cli"
  url "https://github.com/wjllance/standx-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "feb19a387be0cb2e0f0b06aa05d6f6964e666c87578b371f563449b16b9fc5d8"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "standx"
    bin.install "target/release/standx"
  end

  test do
    assert_match "standx #{version}", shell_output("#{bin}/standx --version")
    assert_match "A CLI tool for StandX perpetual DEX", shell_output("#{bin}/standx --help")
  end
end
