class Xkcdsay < Formula
  desc "View the XKCD comics in the terminal"
  homepage "https://github.com/siddontang/xkcdsay"
  url "https://github.com/siddontang/xkcdsay/archive/refs/tags/v0.2.tar.gz"
  sha256 "b410427e3f59af738e7db41f100ec5dd5c4c558f526ecf510551c12922d5e0f5"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"xkcdsay", "./cmd/xkcdsay/."
  end

  test do
    system "#{bin}/xkcdsay"
  end
end
