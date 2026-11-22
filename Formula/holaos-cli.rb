class HolaosCli < Formula
  desc "Run models and agents on your own computer (command line)"
  homepage "https://github.com/holaboss-ai/holaOS-app"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.0/holaos-cli-darwin-arm64"
      sha256 "769163e427b5b6b8fb74349e1a6a3953e792beeb1f91891007f1f97559ead3b9"
    end
    on_intel do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.0/holaos-cli-darwin-amd64"
      sha256 "58dca0d5bebc3dadefb6fecaf56173795d9d277ba6d1e8f603a60a730b7c1cc7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.0/holaos-cli-linux-arm64"
      sha256 "18cca07c8548836943b35e5ab9643be15c5ae6e02b0c6717911124d9e87d5d1c"
    end
    on_intel do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.0/holaos-cli-linux-amd64"
      sha256 "0a5dbd929d6e80ebec30daa96f43225a1cdb6c293685b0af5bbedf88be71de8a"
    end
  end

  conflicts_with cask: "holaboss-ai/tap/holaos"

  def install
    bin.install Dir["holaos-cli-*"].first => "holaos"
  end

  test do
    assert_match "holaos #{version}", shell_output("#{bin}/holaos --version")
  end
end
