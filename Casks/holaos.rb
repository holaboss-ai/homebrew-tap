cask "holaos" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5"
  sha256 arm:   "47c3e66e45907fd9214c1233bd73edcf0bfdf8cebaeae79c2c0f44cef84fbd30",
         intel: "c3b00d34010e5f4d52278aa29d8e101e1ac31a30daa9a47b6d294ac8c27ecf88"

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
