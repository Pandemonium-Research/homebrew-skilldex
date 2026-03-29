class SkilldexCli < Formula
  desc "Package manager and registry for Claude skill packages"
  homepage "https://github.com/Pandemonium-Research/Skilldex"
  url "https://registry.npmjs.org/skilldex-cli/-/skilldex-cli-0.1.0.tgz"
  sha256 "b1aaada5bb6a13df54eb838c0c9c6e03dcd44422d32718ff54291d781c172c52"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/skillpm --version")
  end
end
