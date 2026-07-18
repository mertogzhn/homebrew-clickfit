# Homebrew Tap for ClickFit

Homebrew tap for [ClickFit](https://github.com/mertogzhn/ClickFitMac) — a native macOS window manager driven by mouse gestures.

## Usage

```bash
brew install --cask mertogzhn/clickfit/clickfit
```

> **Note (Homebrew 6.0+):** Third-party taps are untrusted by default. If you see
> `Refusing to load cask ... from untrusted tap`, trust the tap once and retry:
>
> ```bash
> brew trust mertogzhn/clickfit
> ```

## Updating

```bash
brew upgrade --cask clickfit
```

## Uninstalling

```bash
# App only
brew uninstall --cask clickfit

# App + all preferences/caches
brew uninstall --cask --zap clickfit
```

## Requirements

- macOS 15 (Sequoia) or later
