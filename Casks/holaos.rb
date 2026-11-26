cask "holaos" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.7"
  sha256 arm:   "1fec173a0df7c397a8c267eeb4546364f99b6e481f308688cc700db08214919a",
         intel: "32c05a19984393da9fce3d3538bc449bd57ddbfc67e3657df90110e1f81bf963"

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
