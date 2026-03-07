class ClaudePrimer < Formula
  include Language::Python::Virtualenv

  desc "Prime your repo for Claude Code — context-aware knowledge architecture generator"
  homepage "https://github.com/limaronaldo/claude-primer"
  url "https://files.pythonhosted.org/packages/source/c/claude-primer/claude_primer-1.3.1.tar.gz"
  sha256 "8a5a58f0d348432addda97123c0eea8db506e86c959c206ee4685cfa2ce2b83c"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "claude-primer", shell_output("#{bin}/claude-primer --help 2>&1")
  end
end
