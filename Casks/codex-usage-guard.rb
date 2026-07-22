cask "codex-usage-guard" do
  version "0.1.0"

  on_arm do
    on_macos do
      sha256 "ad12897d80f536651d17ec6767588782d7c35c5c7aab428a789fdc2d5e417d32"
      url "https://github.com/Hiosdra/codex-usage-guard/releases/download/v#{version}/codex-usage-guard-darwin-arm64.tar.gz",
          verified: "github.com/Hiosdra/codex-usage-guard/"
    end

    on_linux do
      sha256 "d12430f32371d709914c40d57b87ebb575ab9fefc92966671381ed37d58ccfeb"
      url "https://github.com/Hiosdra/codex-usage-guard/releases/download/v#{version}/codex-usage-guard-linux-arm64.tar.gz",
          verified: "github.com/Hiosdra/codex-usage-guard/"
    end
  end

  on_intel do
    on_macos do
      sha256 "870df5002112f1ae9212c4cf3725b99b9cd2ec23acff40adc34f6e9a8d335f63"
      url "https://github.com/Hiosdra/codex-usage-guard/releases/download/v#{version}/codex-usage-guard-darwin-x64.tar.gz",
          verified: "github.com/Hiosdra/codex-usage-guard/"
    end

    on_linux do
      sha256 "61b6029b8991578658408e54498298485fe5b914c711068154b82c490d12de2e"
      url "https://github.com/Hiosdra/codex-usage-guard/releases/download/v#{version}/codex-usage-guard-linux-x64.tar.gz",
          verified: "github.com/Hiosdra/codex-usage-guard/"
    end
  end

  name "codex-usage-guard"
  desc "Local Codex usage pacing CLI and UserPromptSubmit hook"
  homepage "https://github.com/Hiosdra/codex-usage-guard"

  livecheck do
    url "https://github.com/Hiosdra/codex-usage-guard/releases"
    strategy :github_latest
  end

  binary "codex-usage-guard"
end
