# sagwaco/homebrew-tap

A personal [Homebrew](https://brew.sh) tap.

| Package | What it is | Type |
| ------- | ---------- | ---- |
| [`plz`](https://github.com/sagwaco/pretty-plz) | Natural-language to shell-command CLI | Formula |
| [`x3fuse`](https://github.com/sagwaco/x3fuse) | macOS app: converts Sigma Merrill/Quattro X3F RAW files to DNG, TIFF, and JPEG | Cask |

The first time you reference the tap, Homebrew automatically taps
`sagwaco/homebrew-tap` for you. To tap it explicitly:

```bash
brew tap sagwaco/tap
```

## `plz`

```bash
brew install sagwaco/tap/plz   # or, after tapping: brew install plz
```

The formula builds `plz` from source with `cargo install`, so a Rust
toolchain is pulled in as a build dependency.

```bash
brew update && brew upgrade plz   # upgrade
brew uninstall plz                # uninstall
```

## `x3fuse`

```bash
brew install --cask sagwaco/tap/x3fuse   # or, after tapping: brew install --cask x3fuse
```

X3Fuse also updates itself in-app via Sparkle, so `brew upgrade` and the
built-in updater both work:

```bash
brew update && brew upgrade --cask x3fuse   # upgrade
brew uninstall --cask x3fuse                # uninstall (add --zap to also remove preferences/caches)
```

## Untap

```bash
brew untap sagwaco/tap
```

## Links

- `plz`: <https://github.com/sagwaco/pretty-plz>
- `x3fuse`: <https://github.com/sagwaco/x3fuse>

## Maintaining this tap (per release)

### `plz` (manual)

When `pretty-plz` cuts a new release, update `Formula/plz.rb` here:

1. Bump `tag:` to the new `vX.Y.Z`.
2. Bump `revision:` to that tag's full commit SHA
   (`git rev-parse vX.Y.Z` in the `pretty-plz` checkout).
3. Commit and push.

Users then pick it up with `brew update && brew upgrade plz`.

The source of truth for the formula lives in the main repo at
`packaging/homebrew/plz.rb`; keep `Formula/plz.rb` in this tap in sync with it.

### `x3fuse` (automated)

`Casks/x3fuse.rb` is the source of truth and is bumped **automatically**: the
[x3fuse release workflow](https://github.com/sagwaco/x3fuse/blob/main/.github/workflows/release.yml)
pushes a commit here that updates only the `version` and `sha256` lines whenever a new
version ships. No manual action is needed per release. (That push uses a fine-grained PAT
with *Contents: write* on this repo, stored as the `HOMEBREW_TAP_TOKEN` secret in the
x3fuse repo.)
