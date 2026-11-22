cask "holaos" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1"
  sha256 arm:   "4bc9e2d67c755a6e57f34977e15da792cf1dd702b7a14539dbe46dd43b595645",
         intel: "8471ab6fecdeca07e5a53abf0215a0b02096a14335c6b7d4ad348acd19f7708a"

  url "https://github.com/holaboss-ai/holaOS-app/releases/download/v#{version}/holaos-darwin-#{arch}.zip"
  name "holaOS"
  desc "Run models and agents on your own computer"
  homepage "https://github.com/holaboss-ai/holaOS-app"

  livecheck do
    url :url
    strategy :github_latest
  end

  # macOS 12 or later; Homebrew reads a bare symbol as "this or newer"
  # holaOS replaces itself; brew leaves it to that, and  skips it
  auto_updates true
  depends_on macos: :monterey

  app "holaOS.app"
  binary "#{appdir}/holaOS.app/Contents/MacOS/holaos"

  zap trash: "~/.config/holaos"
end
