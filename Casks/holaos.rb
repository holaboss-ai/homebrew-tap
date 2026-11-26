cask "holaos" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.6"
  sha256 arm:   "02fd68861899359cc9fa199268b9debe2bc95f209542591833c28cc5644816d5",
         intel: "d7f650d52bd02a244e779790ced64f5f1eac330a58b0bf991c7b4aaf90a2f4bb"

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
