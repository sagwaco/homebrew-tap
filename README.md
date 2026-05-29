# sagwaco/homebrew-tap

A personal [Homebrew](https://brew.sh) tap for [`plz`](https://github.com/sagwaco/pretty-plz)
— a natural-language to shell-command CLI.

## Install

```bash
brew install sagwaco/tap/plz
```

The first time you reference the tap, Homebrew automatically taps
`sagwaco/homebrew-tap` for you. To tap it explicitly:

```bash
brew tap sagwaco/tap
brew install plz
```

The formula builds `plz` from source with `cargo install`, so a Rust
toolchain is pulled in as a build dependency.

## Upgrade

```bash
brew update
brew upgrade plz
```

## Uninstall

```bash
brew uninstall plz
brew untap sagwaco/tap
```

## Links

- Main project: <https://github.com/sagwaco/pretty-plz>

## Maintaining this tap (per release)

When `pretty-plz` cuts a new release, update `Formula/plz.rb` here:

1. Bump `tag:` to the new `vX.Y.Z`.
2. Bump `revision:` to that tag's full commit SHA
   (`git rev-parse vX.Y.Z` in the `pretty-plz` checkout).
3. Commit and push.

Users then pick it up with:

```bash
brew update && brew upgrade plz
```

The source of truth for the formula lives in the main repo at
`packaging/homebrew/plz.rb`; keep `Formula/plz.rb` in this tap in sync with it.
