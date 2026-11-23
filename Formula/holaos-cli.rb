class HolaosCli < Formula
  desc "Run models and agents on your own computer (command line)"
  homepage "https://github.com/holaboss-ai/holaOS-app"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.3/holaos-cli-darwin-arm64"
      sha256 "c7ba7ae5a08df5f0d7e0bdb8c9797c38b3373b876359245c9b57461b1169e049"
    end
    on_intel do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.3/holaos-cli-darwin-amd64"
      sha256 "1bbd68f37d412c6d9805939dfc90d54583f57cc4e70c0a387cf5cc612a7c9b4f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.3/holaos-cli-linux-arm64"
      sha256 "1fc63cf179b0238262f7f1bc98226088bbead2a7dc4b0e2287e782971aa7af5a"
    end
    on_intel do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.3/holaos-cli-linux-amd64"
      sha256 "bd48367b98f97816984ba2b8a54283467af09bf4c3f062c2213a466279acdc86"
    end
  end

  def install
    bin.install Dir["holaos-cli-*"].first => "holaos"
  end

  test do
    assert_match "holaos #{version}", shell_output("#{bin}/holaos --version")
  end
end
