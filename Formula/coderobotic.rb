class Coderobotic < Formula
  desc "Robotic Code in your terminal, the coding teammate from Starteammate"
  homepage "https://starteammate.com"
  url "https://registry.npmjs.org/@coderobotic/code/-/code-0.5.6.tgz"
  sha256 "edac304776ee73e2d9e64ce016284d0bebed3fb724546bbadf0d469abac5bb24"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/coderobotic", libexec/"bin/robotic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coderobotic --version")
  end
end
