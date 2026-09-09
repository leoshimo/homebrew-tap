class Ditooctl < Formula
  desc "Direct remote for the Divoom Ditoo pixel display"
  homepage "https://github.com/leoshimo/ditooctl"
  url "https://github.com/leoshimo/ditooctl/releases/download/v0.1.2/ditooctl-0.1.2-macos-universal.tar.gz"
  sha256 "134d748d94d738db53f3a88d783d6f2483e08ea5a24e91bb1cc670df3a04a6b8"
  license "MIT"
  depends_on :macos => :ventura

  def install
    bin.install "bin/ditooctl"
  end

  test do
    assert_equal "0.1.2", shell_output("#{bin}/ditooctl --version").strip
  end
end
