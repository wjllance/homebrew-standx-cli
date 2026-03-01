class StandxCli < Formula
  desc "CLI tool for StandX perpetual DEX"
  homepage "https://github.com/wjllance/standx-cli"
  url "https://github.com/wjllance/standx-cli/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "871083bbef8df1b4b7a10e83bd086a896c8165ba4532c8064a88b5bd5a68ea6f"
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
