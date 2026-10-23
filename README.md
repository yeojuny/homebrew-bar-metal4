# BAR Metal 4 contributor tap

```sh
brew install yeojuny/bar-metal4/bar-metal4-source
bar-metal4-source
```

Homebrew requires trust for third-party packages. Installing by the full name above trusts this formula only. If you previously tapped the repository and received an untrusted-formula error, use:

```sh
brew trust --formula yeojuny/bar-metal4/bar-metal4-source
brew install yeojuny/bar-metal4/bar-metal4-source
```

See [Homebrew Tap Trust](https://github.com/Homebrew/brew/blob/main/docs/Tap-Trust.md).

Installs the October 23 pre-performance source baseline and contributor documentation, **not a playable app**. A native Metal 4 app cask is pending portable packaging, matching source and redistribution checks. See [the project](https://github.com/yeojuny/BAR-Metal4).

This tap does not modify the existing `yeojuny/bar` tap or its other BAR port. The formula verifies the immutable release archive with SHA-256. Formula and tap documentation are CC0-1.0; distributed source retains its original per-component licenses.
