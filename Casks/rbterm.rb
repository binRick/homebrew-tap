# Cask is bumped automatically by tools/publish-update.sh in the
# rbterm repo. Each release: version + sha256 update + commit + push.
# Don't hand-edit the version/sha unless the publish flow is broken.
cask "rbterm" do
  version "0.3.63"
  sha256 "3a2b4a9d27d0ce05230255f4f7a12b9efc0d59c4656da609e4a070e292d87f25"

  url "https://rbterm.ximg.app/updates/macos-arm64/rbterm-#{version}.zip"
  name "rbterm"
  desc "GPU-accelerated terminal emulator with native MP4/WebM/APNG recording"
  homepage "https://github.com/binRick/rbterm"

  # Keep cask in sync with the canonical update manifest. brew
  # livecheck reads the same JSON the in-app updater consumes.
  livecheck do
    url "https://rbterm.ximg.app/updates/manifest.json"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  # Apple Silicon only — current build target. Add :intel branch
  # here if/when an x86_64 mac build is published.
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "rbterm.app"

  zap trash: [
    "~/.config/rbterm",
    "~/Library/Application Support/rbterm",
    "~/Library/Caches/rbterm",
    "~/Library/Preferences/app.ximg.rbterm.plist",
  ]
end
