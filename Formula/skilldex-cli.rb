class SkilldexCli < Formula
  desc "Package manager and registry for Claude skill packages"
  homepage "https://github.com/Pandemonium-Research/Skilldex"
  url "https://registry.npmjs.org/skilldex-cli/-/skilldex-cli-1.0.0.tgz"
  sha256 "00077b607608f6d5215dc6df814777a090c5aebf7ff0e68e549bf9cf095e32c8"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/skillpm --version")
  end
end
