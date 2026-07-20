# Homebrew Starcat CLI

Official Homebrew tap for the open-source Starcat CLI and MCP bridge.

## Install

```bash
brew tap starcat-app/starcat-cli
brew install starcat
```

The tap repository is named `homebrew-starcat-cli` according to Homebrew conventions. The Formula and installed command are both named `starcat`.

## Upgrade

```bash
brew update
brew upgrade starcat
```

Homebrew owns binaries installed through this Formula. `starcat update` will therefore ask Homebrew users to run the commands above instead of modifying files inside the Cellar.

## Release automation

`Formula/starcat.rb` is generated and committed by the `starcat-app/starcat-cli` Release workflow after each published version. The Formula references immutable GitHub Release archives and their SHA-256 checksums.

The first Formula appears after the first Starcat CLI release is published.

[中文说明](./README-ZH.md)

## License

MIT
