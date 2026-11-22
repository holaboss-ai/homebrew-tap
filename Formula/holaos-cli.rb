class HolaosCli < Formula
  desc "Run models and agents on your own computer (command line)"
  homepage "https://github.com/holaboss-ai/holaOS-app"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.1/holaos-cli-darwin-arm64"
      sha256 "ac5d401a1bf0399f021c05db7019fc9f7856dad664d0016571e88e5d5ebb56dc"
    end
    on_intel do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.1/holaos-cli-darwin-amd64"
      sha256 "f1a997aecd88a05ed0fe01c911191023490534abe39bcc14a0deb24d1b8a1101"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.1/holaos-cli-linux-arm64"
      sha256 "e171347b4df7842e4dbe719a76a2d5a010ee09283b49e7191df6006b1df9edd3"
    end
    on_intel do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.1/holaos-cli-linux-amd64"
      sha256 "b6914d73caea089f782cf640f83b62a0fbe6a37d434ab211e74da62fc5bf7d1f"
    end
  end

  def install
    bin.install Dir["holaos-cli-*"].first => "holaos"
  end

  test do
    assert_match "holaos #{version}", shell_output("#{bin}/holaos --version")
  end
end
