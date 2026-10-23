class Coderobotic < Formula
  desc "Robotic Code in your terminal, the coding teammate from Starteammate"
  homepage "https://starteammate.com"
  url "https://registry.npmjs.org/@coderobotic/code/-/code-0.5.9.tgz"
  sha256 "0ac3929692e047fd4d7227eab7c034fe7e158f84f5bde105380ab4adb036d46e"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/coderobotic", libexec/"bin/robotic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coderobotic --version")
  end
end
