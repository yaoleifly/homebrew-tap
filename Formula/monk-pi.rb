class MonkPi < Formula
  desc "Zero-config harness for running Pi Coding Agent with Monk API (monk.party)"
  homepage "https://github.com/yaoleifly/monk-pi"
  url "https://registry.npmjs.org/monk-pi/-/monk-pi-0.15.0.tgz"
  sha256 "c8d3eae160a892e32837db3dcae515e843e5383fef52b8141940c8bcf8b6d59f"
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
