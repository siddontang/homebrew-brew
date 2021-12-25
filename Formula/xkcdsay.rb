class Xkcdsay < Formula
  desc "View the XKCD comics in the terminal"
  homepage "https://github.com/siddontang/xkcdsay"
  url "https://github.com/siddontang/xkcdsay/archive/refs/tags/v0.1.tar.gz"
  sha256 "8152e2a55b0c8dba6a244d491d779fdb270389ef2228fc9670b2c08106ba6c34"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"xkcdsay", "./cmd/xkcdsay/."
  end

  test do
    system "#{bin}/xkcdsay"
  end
end
