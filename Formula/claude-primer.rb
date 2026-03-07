class ClaudePrimer < Formula
  desc "Prime your repo for Claude Code"
  homepage "https://github.com/limaronaldo/claude-primer"
  url "https://files.pythonhosted.org/packages/source/c/claude-primer/claude_primer-1.3.4.tar.gz"
  sha256 "9d20e963b8864fe4b69ad555cc67abdab3ce6ff0a1c1eabf2b3db14717241d4d"
  license "MIT"
  depends_on "python@3.12"
  def install
    libexec.install "claude_primer.py"
    (bin/"claude-primer").write <<~SH
      #!/bin/bash
      exec python3 "#{libexec}/claude_primer.py" "$@"
    SH
  end
  test do
    system bin/"claude-primer", "--help"
  end
end
