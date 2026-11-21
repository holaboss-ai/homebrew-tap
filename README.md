# holaboss-ai/homebrew-tap

Homebrew packages for [holaOS](https://github.com/holaboss-ai/holaOS-releases).

```sh
brew install --cask holaboss-ai/tap/holaos     # the macOS app, with `holaos` on your PATH
brew install holaboss-ai/tap/holaos-cli        # the command line alone (macOS and Linux)
```

`brew upgrade` picks up each release: the release workflow rewrites
`Casks/holaos.rb` and `Formula/holaos-cli.rb` whenever a new version of holaOS
is published.
