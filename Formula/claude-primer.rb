class ClaudePrimer < Formula
  desc "Prime your repo for Claude Code"
  homepage "https://github.com/limaronaldo/claude-primer"
  url "https://github.com/limaronaldo/claude-primer/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "7d3deaf77c1b4db1a88671773f5464bbe3197f9b0e8c7bab62db1b668b309fc6"
  version "1.4.0"
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
