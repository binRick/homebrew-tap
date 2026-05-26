class Tracep < Formula
  desc "Trace a process's network, TLS, DNS, and exec activity"
  homepage "https://github.com/binRick/tracep"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binRick/tracep/releases/download/v0.1.2/tracep-darwin-arm64"
      sha256 "a7a50a2bb0e7ec4c290eebfa24e59c8d99fcd31dae327e65bee0cd24810bb677"
    end
    on_intel do
      url "https://github.com/binRick/tracep/releases/download/v0.1.2/tracep-darwin-amd64"
      sha256 "5db1f528c810a7711f12cd1728352bc9b4c11fcff46eba3d0b6152285f6aa9a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binRick/tracep/releases/download/v0.1.2/tracep-linux-arm64"
      sha256 "fd86e7f06d0b2d76d3891f82a421d5d4e9fe06dac1fc71cd50875031b14e1935"
    end
    on_intel do
      url "https://github.com/binRick/tracep/releases/download/v0.1.2/tracep-linux-amd64"
      sha256 "3b01ba3801f3c0fd6c614757249f76704645d6cedfd34141b6edcaaf4487e732"
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
