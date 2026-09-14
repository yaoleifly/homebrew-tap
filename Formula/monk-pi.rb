class MonkPi < Formula
  desc "Zero-config harness for running Pi Coding Agent with Monk API (monk.party)"
  homepage "https://github.com/yaoleifly/monk-pi"
  url "https://registry.npmjs.org/monk-pi/-/monk-pi-0.10.2.tgz"
  sha256 "e610c8beae6d9702cf992397eb3e94e36e7a6272c308cb81924f9cfd6201091c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "monk-pi", shell_output("#{bin}/monk-pi --version")
  end
end
