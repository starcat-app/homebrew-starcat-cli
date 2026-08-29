# AGENTS.md — Starcat CLI Homebrew Tap

本文档是本仓库 AI 协作规则的唯一维护源。

## 独立仓库边界

- 本目录是 `starcat-app/homebrew-starcat-cli` 独立 Git 仓库，不属于
  `starcat-cli` 或 Starcat App 仓库。
- 修改前必须确认当前分支与工作区状态；未经 dong4j 明确要求，不得切换分支、提交或处理其他仓库。
- 本仓只负责 Homebrew Formula 分发；CLI 源码、跨平台构建和 GitHub Release
  由 `starcat-app/starcat-cli` 维护。

## 用途与技术栈

本仓库是 Starcat CLI 与 MCP bridge 的官方 Homebrew tap，安装命令与 Formula
均名为 `starcat`。Formula 使用 Homebrew Ruby DSL，按 macOS/Linux 与
arm64/amd64 选择不可变的 GitHub Release 压缩包，并用 SHA-256 校验。

- Homebrew Formula DSL / Ruby
- GitHub Actions macOS runner
- GitHub Release 跨平台归档
- SHA-256 完整性校验

## 关键目录

- `Formula/starcat.rb`：版本、各平台归档 URL、SHA-256、安装和版本测试。
- `.github/workflows/audit.yml`：Formula 存在时执行 style 与 strict audit。
- `README.md` / `README-ZH.md`：安装、升级和自动维护边界。
- `CONTRIBUTING.md` / `SECURITY.md`：自动生成与校验和要求。

## 开发与验证

```bash
brew style Formula/starcat.rb
brew tap starcat-app/starcat-cli "https://github.com/starcat-app/homebrew-starcat-cli.git"
brew audit --strict --formula starcat-app/starcat-cli/starcat
brew test starcat-app/starcat-cli/starcat
git diff --check
```

`brew audit` 必须使用已安装的 tap 名称，不能把仓库内相对路径直接作为目标。

## 项目特有约束

- 稳定版 `Formula/starcat.rb` 由 `starcat-cli` 的 Release workflow 自动生成并提交。
  正常维护不得手工改版本、URL 或校验和；只有自动化不可用且 dong4j 明确授权时才能修复。
- Formula 必须引用不可变的 GitHub Release 归档；每个平台的 `sha256` 必须来自
  同一次 CLI 构建生成的 `checksums.txt`，禁止猜测、复用或跨版本混用。
- 必须完整保留 macOS arm64/amd64 与 Linux arm64/amd64 映射，架构条件和文件名
  必须与 `starcat-cli` 发布资产一致。
- Homebrew 管理 Cellar 内的二进制；不得让 Formula 调用 `starcat update` 覆盖安装文件。
- CLI 行为或 MCP contract 的变更应在 `starcat-cli` 仓库完成，不得在 tap 中复制实现。

## 发布禁令

未经 dong4j 在当前任务中明确授权，禁止创建或推送 tag、执行 `git push`、发布
GitHub Release、上传归档、手工更新远端 Formula、触发发布自动化或执行任何对外分发操作。
