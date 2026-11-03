# BAR Metal4 for Apple Silicon

Public Homebrew tap for [BAR Metal4 v1.11.1](https://github.com/yeojuny/BAR-Metal4/releases/tag/v1.11.1), using verified candidate 204. macOS 27+ and an Apple Silicon Mac are required.

```sh
brew tap yeojuny/bar-metal4
brew trust --tap yeojuny/bar-metal4
brew install --cask yeojuny/bar-metal4/bar-metal4
open "/Applications/BAR Metal4.app"
```

Upgrade with `brew update` then `brew upgrade --cask yeojuny/bar-metal4/bar-metal4`.

The pinned content formula is installed automatically. No GitHub account or token is required. First launch makes a per-user local copy of the content; allow at least 10 GB free. Defaults are AA 0x and VSync off; saved preferences remain intact. v1.11.1 preserves the installed local game's identity across online content-index refreshes, fixing the repeated-download path on subsequent launches.

The app is ad-hoc signed, not notarized. If blocked, attempt opening, then use System Settings > Privacy & Security > Open Anyway. Experimental single-player; public multiplayer and full visual parity are unverified.

[Full installation and troubleshooting](https://github.com/yeojuny/BAR-Metal4/blob/main/docs/RELEASE-1.11.1.md)
