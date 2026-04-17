class TlsCaFetch < Formula
  desc "Fetch and inspect TLS certificate authority chains"
  homepage "https://github.com/binRick/tls-ca-fetch"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/binRick/tls-ca-fetch/releases/download/v1.0.2/tls-ca-fetch-darwin-arm64.tar.gz"
      sha256 "59bdc5aa58b6092fcb70fee8c12193db568e2be91bbbf966f7016dc21f610190"
    end
    on_intel do
      url "https://github.com/binRick/tls-ca-fetch/releases/download/v1.0.2/tls-ca-fetch-darwin-amd64.tar.gz"
      sha256 "c531f7fcc22166db5179720b4eebe086b0924e8cca4c2d023f5ed447ed4b9fe4"
    end
  end

  def install
    bin.install "tls-ca-fetch"
  end

  test do
    system "#{bin}/tls-ca-fetch", "--help"
  end
end
