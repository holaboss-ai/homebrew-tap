class HolaosCli < Formula
  desc "Run models and agents on your own computer (command line)"
  homepage "https://github.com/holaboss-ai/holaOS-app"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.7/holaos-cli-darwin-arm64"
      sha256 "34e559dc6bca32f8bfba88cfab2d0f1635c16401d14375713c483e190fe9c4c3"
    end
    on_intel do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.7/holaos-cli-darwin-amd64"
      sha256 "50fca61794d44c58ac3afd1ad9105f580f466cfc47cb106d5243c8407f92662d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.7/holaos-cli-linux-arm64"
      sha256 "34bb3ac9e2565cd4f47edf6f0128a6deecf0ddbb1c73e3e47ee69329d11327ca"
    end
    on_intel do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.7/holaos-cli-linux-amd64"
      sha256 "106c9a16ea8bf67f4b7df568bd4a8b180141266f487bf40dd5f5d210f1c56ace"
    end
  end

  def install
    bin.install Dir["holaos-cli-*"].first => "holaos"
  end

  test do
    assert_match "holaos #{version}", shell_output("#{bin}/holaos --version")
  end
end
