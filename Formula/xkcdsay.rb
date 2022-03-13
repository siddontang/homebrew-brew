class Xkcdsay < Formula
  desc "View the XKCD comics in the terminal"
  homepage "https://github.com/siddontang/xkcdsay"
  url "https://github.com/siddontang/xkcdsay/archive/refs/tags/v0.3.tar.gz"
  sha256 "0d62f894873a96e16eb97817020faf06dcd97f0b479f6f5b91e314a5b43656a3"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"xkcdsay", "./cmd/xkcdsay/."
  end

  test do
    system "#{bin}/xkcdsay"
  end
end
