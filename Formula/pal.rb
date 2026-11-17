class Pal < Formula
  desc "Terminal palette switcher — list, preview, and apply colour palettes"
  homepage "https://github.com/binRick/pal"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binRick/pal/releases/download/v0.2.2/pal-darwin-arm64.tar.gz"
      sha256 "3ba534d8f2e34fa0d2c62d40e1b32179572b21651646398197aee0c9588de741"
    end
    on_intel do
      url "https://github.com/binRick/pal/releases/download/v0.2.2/pal-darwin-amd64.tar.gz"
      sha256 "9dff1460806c87334f13a55a7b729a2f223d88113aea6c77b407a7ea461ec73b"
    end
  end

  def install
    bin.install "pal"
  end

  test do
    assert_match "nord", shell_output("#{bin}/pal list")
  end
end
