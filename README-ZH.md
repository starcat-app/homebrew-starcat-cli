# Homebrew Starcat CLI

<!-- starcat-promo:start -->
<div align="center">
<a href="https://starcat.ink"><img src="https://raw.githubusercontent.com/starcat-app/starcat-pro/main/banner.webp" width="100%" alt="Starcat" /></a>

<p><strong>这是 Starcat CLI 与 MCP bridge 的官方 Homebrew tap。</strong></p>
<p>Starcat 是一款原生 macOS 应用，可以把 GitHub Stars 变成可搜索、可整理、可用 AI 理解的知识库。它支持 README 渲染、标签与私有笔记、Release 追踪、仓库健康度、AI 摘要、语义搜索、浏览器插件工作流，并提供多个可自部署 API。</p>

<a href="https://github.com/starcat-app/homebrew-starcat"><img src="https://img.shields.io/badge/Install%20with-Homebrew-FBBF24?style=for-the-badge&logo=homebrew&logoColor=white" width="220" alt="Install with Homebrew"/></a>
<br/>
<sub><a href="./README.md">English</a></sub>
</div>

<div align="center">
<a href="https://starcat.ink"><img src="https://img.shields.io/badge/website-starcat.ink-38BDF8?style=flat&color=blue" alt="website"/></a>
<a href="https://github.com/starcat-app/starcat-pro"><img src="https://img.shields.io/badge/support-starcat--pro-lightgrey.svg?style=flat&color=blue" alt="support"/></a>
<a href="https://github.com/starcat-app/homebrew-starcat"><img src="https://img.shields.io/badge/install-homebrew-lightgrey.svg?style=flat&color=blue" alt="homebrew"/></a>
<a href="https://github.com/starcat-app/starcat-localization"><img src="https://img.shields.io/badge/localization-open-lightgrey.svg?style=flat&color=blue" alt="localization"/></a>
</div>

<div align="center">
<img width="900" src="https://raw.githubusercontent.com/starcat-app/starcat-pro/main/main.webp" alt="Starcat main window"/>
</div>

**首选 Homebrew 安装：**

```bash
brew tap starcat-app/starcat
brew trust starcat-app/starcat
brew install --cask starcat
```

**相关链接：**

- 官网与下载: https://starcat.ink
- 公开支持与发布说明: https://github.com/starcat-app/starcat-pro
- Starcat App Homebrew tap: https://github.com/starcat-app/homebrew-starcat
- CLI / MCP: [starcat-cli](https://github.com/starcat-app/starcat-cli) / [Homebrew tap](https://github.com/starcat-app/homebrew-starcat-cli)
- AI Agent Skill: https://github.com/starcat-app/starcat-skill
- 浏览器插件: [Chrome](https://github.com/starcat-app/starcat-chrome-plugin) / [Safari](https://github.com/starcat-app/starcat-safari-plugin)
- 本地化: https://github.com/starcat-app/starcat-localization

**可自部署支撑 API：**

- [starcat-sharing-api](https://github.com/starcat-app/starcat-sharing-api)
- [starcat-trending-api](https://github.com/starcat-app/starcat-trending-api)
- [starcat-weekly-api](https://github.com/starcat-app/starcat-weekly-api)
- [starcat-wiki-api](https://github.com/starcat-app/starcat-wiki-api)
- [starcat-recommend-api](https://github.com/starcat-app/starcat-recommend-api)
- [starcat-discovery-api](https://github.com/starcat-app/starcat-discovery-api)
<!-- starcat-promo:end -->

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
