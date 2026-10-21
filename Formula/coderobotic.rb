class Coderobotic < Formula
  desc "Robotic Code in your terminal, the coding teammate from Starteammate"
  homepage "https://starteammate.com"
  url "https://registry.npmjs.org/@coderobotic/code/-/code-0.3.0.tgz"
  sha256 "c56ef3748d730d33060a23f566da1dab17bb1ee41c63a376b4f7b44c4607f20b"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coderobotic --version")
  end
end
