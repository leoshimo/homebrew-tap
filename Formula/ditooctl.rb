class Ditooctl < Formula
  desc "Direct remote for the Divoom Ditoo pixel display"
  homepage "https://github.com/leoshimo/ditooctl"
  url "https://github.com/leoshimo/ditooctl/releases/download/v0.1.4/ditooctl-0.1.4-macos-universal.tar.gz"
  sha256 "71f4dbe9388bc4d0a6b749f27c1f51fbe481815dd971f1f1db975795c06a03cb"
  license "MIT"
  depends_on :macos => :ventura

  def install
    bin.install "bin/ditooctl"
  end

  test do
    assert_equal "0.1.4", shell_output("#{bin}/ditooctl --version").strip
  end
end
