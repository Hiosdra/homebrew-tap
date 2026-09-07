class CodexUsageGuard < Formula
  desc "Local Codex usage pacing CLI and UserPromptSubmit hook"
  homepage "https://github.com/Hiosdra/codex-usage-guard"
  url "https://github.com/Hiosdra/codex-usage-guard/archive/refs/tags/v0.2.6.tar.gz"
  sha256 "9e9940e0cd2cf1a2ca40c95f182434925a2eae0970ee9752b3c62689db6646a6"
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
