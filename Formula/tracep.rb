class Tracep < Formula
  desc "Trace a process's network, TLS, DNS, and exec activity"
  homepage "https://github.com/binRick/tracep"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binRick/tracep/releases/download/v0.1.1/tracep-darwin-arm64"
      sha256 "f3a950bea42e89ac3121b6adae3f9f7a6d22e078507e860cb8fed24a9f44bfff"
    end
    on_intel do
      url "https://github.com/binRick/tracep/releases/download/v0.1.1/tracep-darwin-amd64"
      sha256 "dfa6ef1fd101199a53f64c230c24f3f44ad9246bb1031848e0f64f56d92be6c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/binRick/tracep/releases/download/v0.1.1/tracep-linux-arm64"
      sha256 "1b9fbed6dffca1fa87e9336a3aff3c94ba952bb5e395e8330b47ae6b847704c6"
    end
    on_intel do
      url "https://github.com/binRick/tracep/releases/download/v0.1.1/tracep-linux-amd64"
      sha256 "2674fcb9322554fa327dbb6e7a99830c3032a4e60781150a3f87f8d4085e03a1"
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
