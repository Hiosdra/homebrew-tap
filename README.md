# Hiosdra Homebrew Tap

This tap distributes Hiosdra command-line tools. Each formula either builds from source or installs a release binary; its section says which.

## Install codex-usage-guard

```sh
brew tap Hiosdra/tap
brew install codex-usage-guard
```

The formula builds the `codex-usage-guard` executable with Bun on macOS or
Linux, avoiding prebuilt macOS binaries and Gatekeeper signing requirements.
The Codex hook remains unchanged until you run
`codex-usage-guard install-hook`.

Project repository: <https://github.com/Hiosdra/codex-usage-guard>

## Install homectl

```sh
brew tap Hiosdra/tap
brew install homectl
```

The formula installs the release binary for macOS and Linux, on arm64 and x64. The command is `home-ctl`: release v0.2.0 names its executable `homectl`, and the formula installs it under the new name.

Project repository: <https://github.com/Hiosdra/homectl>
