class Coderobotic < Formula
  desc "Robotic Code in your terminal, the coding teammate from Starteammate"
  homepage "https://starteammate.com"
  url "https://registry.npmjs.org/@coderobotic/code/-/code-0.4.0.tgz"
  sha256 "4734baa111063ca6f76dbca902ad0ea0dea8877feb574aba755655ebdf280072"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/coderobotic", libexec/"bin/robotic"
    bin.install_symlink libexec/"bin/code" unless (HOMEBREW_PREFIX/"bin/code").exist?
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coderobotic --version")
  end
end
