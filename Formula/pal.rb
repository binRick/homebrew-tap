class Pal < Formula
  desc "Terminal palette switcher — list, preview, and apply colour palettes"
  homepage "https://github.com/binRick/pal"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binRick/pal/releases/download/v0.1.1/pal-darwin-arm64.tar.gz"
      sha256 "d2cf161ef36345ec11d1a64bc8e6303bbc8451b2d634d17a823cc3c8623c966b"
    end
    on_intel do
      url "https://github.com/binRick/pal/releases/download/v0.1.1/pal-darwin-amd64.tar.gz"
      sha256 "35abcf5b8f123a15c8d01dd7f9210da32772272bb5eeafb96643df797d805b05"
    end
  end

  def install
    bin.install "pal"
  end

  test do
    assert_match "palette", shell_output("#{bin}/pal list 2>&1", 0)
  end
end
