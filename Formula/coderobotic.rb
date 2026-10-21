class Coderobotic < Formula
  desc "Robotic Code in your terminal, the coding teammate from Starteammate"
  homepage "https://starteammate.com"
  url "https://registry.npmjs.org/@coderobotic/code/-/code-0.2.0.tgz"
  sha256 "a35de840fd5ffca1f50aaa95dfe7fb39fe77a0b500ddd5001da0447109ae2b20"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coderobotic --version")
  end
end
