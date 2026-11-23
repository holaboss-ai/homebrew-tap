class HolaosCli < Formula
  desc "Run models and agents on your own computer (command line)"
  homepage "https://github.com/holaboss-ai/holaOS-app"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.2/holaos-cli-darwin-arm64"
      sha256 "030df9a5d76f4f8f44caddb82b8106e97f2525a3a99c24ea65963ee5789a3d09"
    end
    on_intel do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.2/holaos-cli-darwin-amd64"
      sha256 "2dc61ddd99a4e7b87c49a6e5e4cb895e63e32cb761df6b4aa1e5d23b2a479d08"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.2/holaos-cli-linux-arm64"
      sha256 "f0cb9a9a47cad3ade137b48577edd9e7ebbfddce9f04c78b0e33667bd1f2be6a"
    end
    on_intel do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.2/holaos-cli-linux-amd64"
      sha256 "0ee33cbe041fdb69aea27ea9d66ec3817553bac16ad3286e97f4dfd1e773380f"
    end
  end

  def install
    bin.install Dir["holaos-cli-*"].first => "holaos"
  end

  test do
    assert_match "holaos #{version}", shell_output("#{bin}/holaos --version")
  end
end
