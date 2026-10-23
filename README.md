# BAR Metal4 Homebrew tap

## Install the app (Apple Silicon, macOS 27+)

```sh
brew tap yeojuny/bar-metal4
brew trust --formula yeojuny/bar-metal4/bar-metal4-content
brew install --cask yeojuny/bar-metal4/bar-metal4
open "/Applications/BAR Metal4.app"
```

Installs the experimental pre-performance app and exact game content. First launch prepares about 2 GB in its own user-data directory. The app is ad-hoc signed and not Apple notarized; macOS may require Privacy & Security → Open Anyway after the first attempted launch. [Details](https://github.com/yeojuny/BAR-Metal4/blob/main/docs/APP-INSTALL.md).

## Source only

```sh
brew install yeojuny/bar-metal4/bar-metal4-source
```

Full names grant item-specific Homebrew trust. The separate content formula is explicitly trusted above because it is a cask dependency. See [Homebrew Tap Trust](https://github.com/Homebrew/brew/blob/main/docs/Tap-Trust.md).

This tap does not modify the other BAR port in `yeojuny/bar`. Formula/cask/launcher documentation is CC0-1.0; upstream source, libraries, game and media retain their individual licenses.
