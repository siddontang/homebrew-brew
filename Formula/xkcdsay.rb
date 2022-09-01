class Xkcdsay < Formula
  desc "View the XKCD comics in the terminal"
  homepage "https://github.com/siddontang/xkcdsay"
  url "https://github.com/siddontang/xkcdsay/archive/refs/tags/v0.4.tar.gz"
  sha256 "19159c3ccef3df893b088cfa118868e7b2c4f81c43f5f1cbd81be99c42927d50"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"xkcdsay", "./cmd/xkcdsay/."
  end

  test do
    system "#{bin}/xkcdsay"
  end
end
