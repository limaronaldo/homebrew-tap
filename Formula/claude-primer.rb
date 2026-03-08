class ClaudePrimer < Formula
  desc "Prime your repo for Claude Code"
  homepage "https://github.com/limaronaldo/claude-primer"
  url "https://github.com/limaronaldo/claude-primer/archive/refs/tags/v1.5.1.tar.gz"
  sha256 "be521fb7706f947d1a589aa70c013d916d2fdbfd2eb9175d77acec308953f12f"
  version "1.5.1"
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
