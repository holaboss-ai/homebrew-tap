cask "holaos" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3"
  sha256 arm:   "5efa61e33c0bca3d7f58dff2369983b25b3a376bb9e7eef8560b12e3a1cbcc5e",
         intel: "fd39ea513a3492e5ea7574a3f73f34bd0bffc456326a5c9ce9e787ce8558a939"

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
