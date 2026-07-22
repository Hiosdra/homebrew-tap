# Hiosdra Homebrew Tap

This tap distributes Hiosdra command-line tools built locally from source.

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
