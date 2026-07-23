class CodexUsageGuard < Formula
  desc "Local Codex usage pacing CLI and UserPromptSubmit hook"
  homepage "https://github.com/Hiosdra/codex-usage-guard"
  url "https://github.com/Hiosdra/codex-usage-guard/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "7bbbc3c05a0d689d57cf870269ac0a6226bd7cd9e8b52e8e4e798411c0fb2a28"
  license "MIT"

  depends_on "bun" => :build

  def install
    system "bun", "build", "./src/cli.ts", "--compile", "--outfile", bin / "codex-usage-guard"
    bin.install_symlink "codex-usage-guard" => "cug"
  end

  test do
    assert_match "codex-usage-guard", shell_output("#{bin}/codex-usage-guard --help")
    assert_match "cug", shell_output("#{bin}/cug --help")
  end
end
