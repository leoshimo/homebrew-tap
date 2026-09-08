class Ditooctl < Formula
  desc "Direct remote for the Divoom Ditoo pixel display"
  homepage "https://github.com/leoshimo/ditooctl"
  url "https://github.com/leoshimo/ditooctl/releases/download/v0.1.0/ditooctl-0.1.0-macos-universal.tar.gz"
  sha256 "84d47af58b297d6f280886d87f47f772cb5ee576559bf00eb5d325dc701bf00e"
  license "MIT"
  depends_on :macos => :ventura

  def install
    bin.install "bin/ditooctl"
  end

  test do
    assert_equal "0.1.0", shell_output("#{bin}/ditooctl --version").strip
  end
end
