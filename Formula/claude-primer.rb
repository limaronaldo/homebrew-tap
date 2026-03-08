class ClaudePrimer < Formula
  desc "Prime your repo for Claude Code"
  homepage "https://github.com/limaronaldo/claude-primer"
  url "https://files.pythonhosted.org/packages/source/c/claude-primer/claude_primer-1.6.0.tar.gz"
  sha256 "dad4d8cc7086a4f517a7f5a78440709d545b9d2ee911152816b4b99438c70962"
  version "1.6.0"
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
