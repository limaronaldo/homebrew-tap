class ClaudePrimer < Formula
  include Language::Python::Virtualenv

  desc "Prime your repo for Claude Code — context-aware knowledge architecture generator"
  homepage "https://github.com/limaronaldo/claude-primer"
  url "https://files.pythonhosted.org/packages/source/c/claude-primer/claude_primer-1.3.3.tar.gz"
  sha256 "7d0a901df4af2d843b1082b13fbb6ccee8382d70b0c9fadd3537d8db6378cd3b"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "claude-primer", shell_output("#{bin}/claude-primer --help 2>&1")
  end
end
