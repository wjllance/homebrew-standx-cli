class StandxCli < Formula
  desc "CLI tool for StandX perpetual DEX"
  homepage "https://github.com/wjllance/standx-cli"
  url "https://github.com/wjllance/standx-cli/archive/refs/tags/v0.6.1-rc.3.tar.gz"
  sha256 "23a8dcd8fb53d98f1d10c2209ca3f6df371d3cb19b61bb23e1216162d963ca10"
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
