class HolaosCli < Formula
  desc "Run models and agents on your own computer (command line)"
  homepage "https://github.com/holaboss-ai/holaOS-app"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.6/holaos-cli-darwin-arm64"
      sha256 "01ecd1af7b5ae95b7ba7c23f7cbcee8dce7d2c216ad9a8d7dd5b2393a11fb040"
    end
    on_intel do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.6/holaos-cli-darwin-amd64"
      sha256 "971c9c243d918ecec30b2f53a128bee44d3d41074d655bcd78b64b4ea78951ef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.6/holaos-cli-linux-arm64"
      sha256 "9d17930fa2c95d2874bd862b563a02450da61477cf3077990b5735887c3dc6c4"
    end
    on_intel do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.6/holaos-cli-linux-amd64"
      sha256 "82980b9e7f188e2045524c0122c4f8425b95ac5035491a161d9888f38a9c79f1"
    end
  end

  def install
    bin.install Dir["holaos-cli-*"].first => "holaos"
  end

  test do
    assert_match "holaos #{version}", shell_output("#{bin}/holaos --version")
  end
end
