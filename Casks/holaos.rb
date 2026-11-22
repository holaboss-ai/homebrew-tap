cask "holaos" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0"
  sha256 arm:   "5334cbf85f53a6cb04e9f7cc06fe02737331ba647171a292f8fd8a4bdd6fbdd7",
         intel: "2c8f36bac21eee5ae3cc425dc73d1279e4b7108c9b7fabb24bce93d541575232"

  url "https://github.com/holaboss-ai/holaOS-app/releases/download/v#{version}/holaos-darwin-#{arch}.zip"
  name "holaOS"
  desc "Run models and agents on your own computer"
  homepage "https://github.com/holaboss-ai/holaOS-app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"
  conflicts_with formula: "holaboss-ai/tap/holaos-cli"

  app "holaOS.app"
  binary "#{appdir}/holaOS.app/Contents/MacOS/holaos"

  zap trash: "~/.config/holaos"
end
