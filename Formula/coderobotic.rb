class Coderobotic < Formula
  desc "Robotic Code in your terminal, the coding teammate from Starteammate"
  homepage "https://starteammate.com"
  url "https://registry.npmjs.org/@coderobotic/code/-/code-0.5.0.tgz"
  sha256 "9f685518e00d8714086986550880b2d0289af221b6b6c996e335e61163442765"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/coderobotic", libexec/"bin/robotic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coderobotic --version")
  end
end
