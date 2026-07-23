class CodexUsageGuard < Formula
  desc "Local Codex usage pacing CLI and UserPromptSubmit hook"
  homepage "https://github.com/Hiosdra/codex-usage-guard"
  url "https://github.com/Hiosdra/codex-usage-guard/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "5ffeba210fffb0303bbbde41321900e27decbf359d75188c57a8ab74e1b51675"
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
