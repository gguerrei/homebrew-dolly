# homebrew-dolly

The Homebrew tap for [dolly](https://github.com/gguerrei/dolly), which saves
the way you build software as a pattern, then applies it anywhere.

```sh
brew install gguerrei/dolly/dolly
```

The formula installs the single-file binary from dolly's GitHub release,
with the GUI embedded; `dolly serve --open` starts it. The formula's
source of truth is `packaging/homebrew/dolly.rb` in the main repository,
copied here at each release with the release's checksums.
