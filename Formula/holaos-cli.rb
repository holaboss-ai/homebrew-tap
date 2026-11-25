class HolaosCli < Formula
  desc "Run models and agents on your own computer (command line)"
  homepage "https://github.com/holaboss-ai/holaOS-app"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.5/holaos-cli-darwin-arm64"
      sha256 "7112604bad2bf83b8004487aad2d7d629fd930704cecd7aba8efa6b41464ea35"
    end
    on_intel do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.5/holaos-cli-darwin-amd64"
      sha256 "4d8ba620d73caeeaeaa31b825afa1b0cd0cc4b82cc127d2e764fbe5ab2b62fed"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.5/holaos-cli-linux-arm64"
      sha256 "7dc56b47e49e47227908a5c17484c7d5157d84cb4c52cc94ffab6274f6046818"
    end
    on_intel do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.5/holaos-cli-linux-amd64"
      sha256 "01f2e546e344ea7971b0b2525bd14ab5fabda7cbedfc4d04e64b7eb2cc599591"
    end
  end

  def install
    bin.install Dir["holaos-cli-*"].first => "holaos"
  end

  test do
    assert_match "holaos #{version}", shell_output("#{bin}/holaos --version")
  end
end
