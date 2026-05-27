class Tracep < Formula
  desc "Trace a process's network, TLS, DNS, and exec activity"
  homepage "https://github.com/binRick/tracep"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binRick/tracep/releases/download/v0.1.3/tracep-darwin-arm64"
      sha256 "525fbb4eb0879f30923c561f0e4958c7b77269d6efcc920e320575b041eb7ddd"
    end
    on_intel do
      url "https://github.com/binRick/tracep/releases/download/v0.1.3/tracep-darwin-amd64"
      sha256 "6a5c5fec76887ded7c5a0dedfc4d5ae3fae6c1a0245718b9157e97da0a07e3e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binRick/tracep/releases/download/v0.1.3/tracep-linux-arm64"
      sha256 "e374f5913ca3b265d7a22637149b083a1f6f892fed0e5ddf05579fc8aba2c2c1"
    end
    on_intel do
      url "https://github.com/binRick/tracep/releases/download/v0.1.3/tracep-linux-amd64"
      sha256 "a426c45af3095dfb9c014b9035210e7ddebd2f21db9138daf3f1f57c8c4fa05b"
    end
  end

  def install
    # Brew downloads a single raw binary named tracep-{os}-{arch}; glob picks
    # whichever one this platform got so the platform mapping isn't duplicated.
    bin.install Dir["tracep-*"].first => "tracep"
  end

  test do
    assert_match "tracep v#{version}", shell_output("#{bin}/tracep -v")
  end
end
