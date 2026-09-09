class Ditooctl < Formula
  desc "Direct remote for the Divoom Ditoo pixel display"
  homepage "https://github.com/leoshimo/ditooctl"
  url "https://github.com/leoshimo/ditooctl/releases/download/v0.1.1/ditooctl-0.1.1-macos-universal.tar.gz"
  sha256 "a5ec8a7631f659120149d50655f35e7c36b61506a9e16194be751bb5585fb58a"
  license "MIT"
  depends_on :macos => :ventura

  def install
    bin.install "bin/ditooctl"
  end

  test do
    assert_equal "0.1.1", shell_output("#{bin}/ditooctl --version").strip
  end
end
