class CodexUsageGuard < Formula
  desc "Local Codex usage pacing CLI and UserPromptSubmit hook"
  homepage "https://github.com/Hiosdra/codex-usage-guard"
  url "https://github.com/Hiosdra/codex-usage-guard/archive/refs/tags/v0.2.7.tar.gz"
  sha256 "64842070876a4b98f59558a9f687a14abeffbc47cf07ea436f8a000d52f80a59"
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
