class Coderobotic < Formula
  desc "Robotic Code in your terminal, the coding teammate from Starteammate"
  homepage "https://starteammate.com"
  url "https://registry.npmjs.org/@coderobotic/code/-/code-0.5.8.tgz"
  sha256 "b476e8a75d6d694821b09c37122eab3314fa80eb0f29890d0dbddfadef28e5e9"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/coderobotic", libexec/"bin/robotic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coderobotic --version")
  end
end
