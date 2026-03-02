class StandxCli < Formula
  desc "CLI tool for StandX perpetual DEX"
  homepage "https://github.com/wjllance/standx-cli"
  url "https://github.com/wjllance/standx-cli/archive/refs/tags/v0.6.3-rc.1.tar.gz"
  sha256 "6a79c67de4860bc2d60f8e59d64816f1f9d89edf4d3423072662b6773ce9812b"
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
