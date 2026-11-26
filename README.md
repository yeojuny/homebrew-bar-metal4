# BAR Metal4 for Apple Silicon

Experimental single-player BAR with native Metal 4 for Apple Silicon, macOS 27.2 or later.
The default CAP2 renderer uses the slot-preserving Grass path with two pending game submissions.
New profiles use 2× health bar scale and height, anti-aliasing off, and VSync off.

```sh
brew tap yeojuny/bar-metal4
brew trust --tap yeojuny/bar-metal4
brew install --cask yeojuny/bar-metal4/bar-metal4
open "/Applications/BAR Metal4.app"
```

Already installed? Run `brew update` and `brew upgrade --cask yeojuny/bar-metal4/bar-metal4`.

[Release and downloads](https://github.com/yeojuny/BAR-Metal4/releases/tag/v1.11.6) · [Installation and verification](https://github.com/yeojuny/BAR-Metal4/blob/v1.11.6/docs/releases/v1.11.6/README.md) · [Licenses and provenance](https://github.com/yeojuny/BAR-Metal4/blob/v1.11.6/NOTICE.md)

The v1.11.6 engine defaults to PREPARE with CAP2 with diagnostics and Metal Validation off. [Changes and validation limits](https://github.com/yeojuny/BAR-Metal4/blob/v1.11.6/docs/releases/v1.11.6/README.md).
