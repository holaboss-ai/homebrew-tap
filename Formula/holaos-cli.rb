class HolaosCli < Formula
  desc "Run models and agents on your own computer (command line)"
  homepage "https://github.com/holaboss-ai/holaOS-app"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.4/holaos-cli-darwin-arm64"
      sha256 "526c278806f2f09a32c0b4d7e0aa44e354203b9065ed649c287778b51f00cbd5"
    end
    on_intel do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.4/holaos-cli-darwin-amd64"
      sha256 "e34de6b3fa4226ebe5322e6cafa2e220ab6f9294393efd33a21f557877c377e2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.4/holaos-cli-linux-arm64"
      sha256 "face5b083094389d76100943f8db33e9dcae747a0d630cfebe2528d105d02b2a"
    end
    on_intel do
      url "https://github.com/holaboss-ai/holaOS-app/releases/download/v0.1.4/holaos-cli-linux-amd64"
      sha256 "4e34112c9f06bddf0bfe4165219d5675720ab2dc59e05de033f3264570fb0f01"
    end
  end

  def install
    bin.install Dir["holaos-cli-*"].first => "holaos"
  end

  test do
    assert_match "holaos #{version}", shell_output("#{bin}/holaos --version")
  end
end
