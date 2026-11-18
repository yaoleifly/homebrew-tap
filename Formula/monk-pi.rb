class MonkPi < Formula
  desc "Zero-config harness for running Pi Coding Agent with Monk API (monk.party)"
  homepage "https://github.com/yaoleifly/monk-pi"
  url "https://registry.npmjs.org/monk-pi/-/monk-pi-0.14.0.tgz"
  sha256 "bfcda951c94effabd22a103feda65721a653586a9dbae528dbc4b19c43505005"
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
