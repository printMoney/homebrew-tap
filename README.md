# printMoney Homebrew tap

Mac apps by printMoney.

```bash
brew tap printmoney/tap
```

```bash
brew trust printmoney/tap
```

Homebrew asks you to trust third-party taps once before installing from them.

## Volume Rocker

[Volume Rocker](https://github.com/printMoney/volume-rocker) gives every app on your Mac its own volume control.

```bash
brew install --cask volume-rocker
```

Update with `brew upgrade --cask volume-rocker`. Uninstall with `brew uninstall --cask volume-rocker` (add `--zap` to also remove its settings).

Requires a Mac with Apple Silicon and macOS 15 or newer.

## Wiretapper

[Wiretapper](https://github.com/printMoney/wiretapper) records your Mac's internal audio from the menu bar.

```bash
brew install --cask wiretapper
```

Update with `brew upgrade --cask wiretapper`. Uninstall with `brew uninstall --cask wiretapper` (add `--zap` to also remove its settings).

Requires macOS 14.4 or newer.

## ritmos

[ritmos](https://github.com/printMoney/ritmos-personal-script) is a personal script that builds QuickToggles, a menu bar app that keeps your display awake, switches F1–F12 to standard function keys and toggles Night Mode.

```bash
brew install ritmos
```

```bash
ritmos
```

`ritmos` compiles QuickToggles on your Mac, installs it to `~/Applications` and opens it. Update with `brew upgrade ritmos`, then run `ritmos` again. Uninstall with `brew uninstall ritmos` and delete `~/Applications/QuickToggles.app`.

Use at your own risk: it's shared as-is, with no warranty. Needs the Xcode Command Line Tools.

## First launch

> Releases aren't notarized by Apple yet. The first time you open one of these apps, macOS may ask whether to open it:
> open **System Settings → Privacy & Security** and click **Open Anyway**.
