class HolaosCli < Formula
  desc "Run models and agents on your own computer (command line)"
  homepage "https://github.com/holaboss-ai/holaOS-app"
  version "0.1.8"

  on_macos do
    on_arm do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.8/holaos-cli-darwin-arm64"
      sha256 "8900707a2866f8f8a9673b56a5c12c2d49b96437cafe5668414b40f6e51c886a"
    end
    on_intel do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.8/holaos-cli-darwin-amd64"
      sha256 "75f1e06a4e5fae3a0e1b97d2b42d04bd17565f4360d2632cc028bb43e4e06d18"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.8/holaos-cli-linux-arm64"
      sha256 "4e7cb5b7f0f26288c0699c0295741468417ff3e13d25161806f1a7dd65ab6e34"
    end
    on_intel do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.8/holaos-cli-linux-amd64"
      sha256 "7fa231aed087feeabbe6c608e21f3c4aa455e9af2a3627aa0537703b08c15feb"
    end
  end

  def install
    bin.install Dir["holaos-cli-*"].first => "holaos"
  end

  test do
    assert_match "holaos #{version}", shell_output("#{bin}/holaos --version")
  end
end
