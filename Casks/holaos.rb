cask "holaos" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.8"
  sha256 arm:   "8036d30ce56ae0d07448f585d4e4a14c7c7b8f227b4a9faedd0a1ba4fcabd7e8",
         intel: "6e0849b20dd56c9925a31ca818a86d3a2de75c48a33bba2263ebc054fbf5d652"

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
