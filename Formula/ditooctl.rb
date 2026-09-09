class Ditooctl < Formula
  desc "Direct remote for the Divoom Ditoo pixel display"
  homepage "https://github.com/leoshimo/ditooctl"
  url "https://github.com/leoshimo/ditooctl/releases/download/v0.1.3/ditooctl-0.1.3-macos-universal.tar.gz"
  sha256 "8a6b6f6cf1c8e58022d422ee3283dd1f44ccbd3575a275c58efaa1b4c477d5bb"
  license "MIT"
  depends_on :macos => :ventura

  def install
    bin.install "bin/ditooctl"
  end

  test do
    assert_equal "0.1.3", shell_output("#{bin}/ditooctl --version").strip
  end
end
