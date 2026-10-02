class CodexUsageGuard < Formula
  desc "Local Codex usage pacing CLI and UserPromptSubmit hook"
  homepage "https://github.com/Hiosdra/codex-usage-guard"
  url "https://github.com/Hiosdra/codex-usage-guard/archive/refs/tags/v0.2.8.tar.gz"
  sha256 "22f2edafb4cfd3452b09f75ca381fc4a3284d8004e96b75fea9610cce9b7c633"
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
