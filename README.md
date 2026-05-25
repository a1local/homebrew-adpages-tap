# AdPages Homebrew Tap Candidate

Draft Homebrew tap for installing the future npm-packaged `adpages` CLI.

This is a scaffold only. The formula is intentionally not ready for public tap submission until the npm package is published and the release metadata is replaced.

## Intended Install Path

Future users should be able to install the CLI with:

```sh
brew tap adpages/tools
brew install adpages
```

The formula installs the npm package tarball into Homebrew's `libexec` prefix and exposes the `adpages` binary through `bin`.

## Release TODOs

Before publishing the tap:

1. Publish `@adpages/cli` to npm.
2. Replace the formula `url` with the final npm tarball URL.
3. Replace `version` with the npm package version.
4. Replace `sha256` with the real tarball checksum.
5. Decide the public package license and update the formula license.
6. Run the formula checks from an environment with Homebrew installed.

## Local Formula Syntax Sanity

On a machine with Homebrew installed, run:

```sh
brew style --formula Formula/adpages.rb
brew audit --strict --new --formula Formula/adpages.rb
brew install --build-from-source Formula/adpages.rb
adpages help
brew test adpages
```

The current formula includes placeholder release metadata, so `brew audit` and `brew install` are expected to fail until those TODOs are replaced.

## Scope

This tap candidate makes no network calls beyond Homebrew fetching the future npm tarball during install. The installed CLI itself should remain the small local helper described in `packages/adpages-cli`.
