class MonkPi < Formula
  desc "Zero-config harness for running Pi Coding Agent with Monk API (monk.party)"
  homepage "https://github.com/yaoleifly/monk-pi"
  url "https://registry.npmjs.org/monk-pi/-/monk-pi-0.13.0.tgz"
  sha256 "1eb1ae8c04bbebfa95f14790cf3d2f9ff305c624a996551e7d01364174866e2b"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "monk-pi", shell_output("#{bin}/monk-pi --version")
  end
end
