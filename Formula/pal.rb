class Pal < Formula
  desc "Terminal palette switcher — list, preview, and apply colour palettes"
  homepage "https://github.com/binRick/pal"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binRick/pal/releases/download/v0.2.3/pal-darwin-arm64.tar.gz"
      sha256 "90ed3bba135861911706161769957906b41cb6e2cb672d027245de1babe0e5b5"
    end
    on_intel do
      url "https://github.com/binRick/pal/releases/download/v0.2.3/pal-darwin-amd64.tar.gz"
      sha256 "1d2eb12505b2d774d8c391b74ec0c641e58b70c8d7344ed41457d55a491a64ec"
    end
  end

  def install
    bin.install "pal"
  end

  test do
    assert_match "nord", shell_output("#{bin}/pal list")
  end
end
