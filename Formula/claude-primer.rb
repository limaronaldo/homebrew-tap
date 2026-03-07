class ClaudePrimer < Formula
  desc "Prime your repo for Claude Code"
  homepage "https://github.com/limaronaldo/claude-primer"
  url "https://github.com/limaronaldo/claude-primer/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "c3feedafc91e81d6fd5f358c132674157d62d7745f4d1cb55c9ae2b554b5d2d9"
  version "1.5.0"
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
