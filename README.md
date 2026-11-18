# Homebrew tap for Volume Rocker

[Volume Rocker](https://github.com/printMoney/volume-rocker) gives every app on your Mac its own volume control.

```bash
brew tap printmoney/tap
```

```bash
brew trust printmoney/tap
```

```bash
brew install --cask volume-rocker
```

Homebrew asks you to trust third-party taps once before installing from them.

Update with `brew upgrade --cask volume-rocker`. Uninstall with `brew uninstall --cask volume-rocker` (add `--zap` to also remove its settings).

Requires a Mac with Apple Silicon and macOS 15 or newer.

> Releases aren't notarized by Apple yet. The first time you open Volume Rocker, macOS asks whether to open it:
> open **System Settings → Privacy & Security** and click **Open Anyway**.
