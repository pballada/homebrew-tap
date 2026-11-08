# pballada/tap

Homebrew tap for my macOS apps. All builds are signed with a Developer ID, notarized by Apple, and update themselves from GitHub Releases.

```sh
brew tap pballada/tap
brew trust pballada/tap   # newer Homebrew asks you to trust third-party taps once
```

| App | Install | What it is |
|---|---|---|
| [ShinyMac](https://github.com/pballada/shinyMac) | `brew install --cask shinymac` | Free, open-source Mac cleaner and complete app uninstaller |
| [Forest](https://github.com/pballada/forest) | `brew install --cask forest` | One window for your coding agents (Claude Code, Codex, Gemini CLI): embedded Ghostty terminals per worktree, live changes and a native Git client. Apple silicon, macOS 14+ |
| [La abadía del crimen](https://github.com/pballada/abadia) | `brew install --cask abadia` | Native port of the 1987 Spanish classic inspired by *The Name of the Rose*. Universal, macOS 13+ |

`brew uninstall --zap --cask <name>` also removes the app's settings and data.
