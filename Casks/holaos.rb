cask "holaos" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4"
  sha256 arm:   "739b8ac521cc618984cb2f48b7083149f7d442ecf275fc4c7c4c7e4a98c37a9f",
         intel: "8bfd35991f1e9f23090b8569a5a5f0a272cddc7cad000fe1321bb4f351924986"

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
