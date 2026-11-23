cask "holaos" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2"
  sha256 arm:   "41a073b70e1254c8bb7474f6e0102420b5c2a359ac5c182539f84695fe9cccec",
         intel: "5b2a8ccbde69763697eba4a010062c4b9606a6956cf430e0afc0eaa76f49c61f"

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
