class CodexUsageGuard < Formula
  desc "Local Codex usage pacing CLI and UserPromptSubmit hook"
  homepage "https://github.com/Hiosdra/codex-usage-guard"
  url "https://github.com/Hiosdra/codex-usage-guard/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "91ff7701a059db1e195a5afb5bd385adcfdab15dd635e0484043416c69828ce0"
  license "MIT"

  depends_on "bun" => :build

  def install
    system "bun", "build", "./src/cli.ts", "--compile", "--outfile", bin / "codex-usage-guard"
  end

  test do
    assert_match "codex-usage-guard", shell_output("#{bin}/codex-usage-guard --help")
  end
end
