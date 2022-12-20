class Xkcdsay < Formula
  desc "View the XKCD comics in the terminal"
  homepage "https://github.com/siddontang/xkcdsay"
  url "https://github.com/siddontang/xkcdsay/archive/refs/tags/v0.5.tar.gz"
  sha256 "e36d7ae5a9fcee44b1465015b7e183fdcfdaca6861061bf1957b95b088e7ccd5"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"xkcdsay", "./cmd/xkcdsay/."
  end

  test do
    system "#{bin}/xkcdsay"
  end
end
