# Homebrew Starcat CLI

这是开源 Starcat CLI 与 MCP bridge 的官方 Homebrew tap。

## 安装

```bash
brew tap starcat-app/starcat-cli
brew install starcat
```

GitHub 仓库名是 `homebrew-starcat-cli`，符合 Homebrew tap 命名约定；Formula 与最终安装的命令仍然叫 `starcat`。

## 更新

```bash
brew update
brew upgrade starcat
```

通过 Homebrew 安装后，二进制由 Homebrew 管理，`starcat update` 不会直接修改 Cellar。

## 自动发布

`starcat-app/starcat-cli` 的 Release workflow 会在每次正式发布后生成并提交 `Formula/starcat.rb`。Formula 使用不可变的 GitHub Release 地址和对应 SHA-256。

第一次 CLI Release 发布后才会生成第一份 Formula。

[English](./README.md)

## License

MIT
