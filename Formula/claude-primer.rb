class ClaudePrimer < Formula
  include Language::Python::Virtualenv

  desc "Prime your repo for Claude Code — context-aware knowledge architecture generator"
  homepage "https://github.com/limaronaldo/claude-primer"
  url "https://files.pythonhosted.org/packages/source/c/claude-primer/claude_primer-1.3.0.tar.gz"
  # TODO: Update SHA256 after publishing claude-primer 1.3.0 to PyPI
  sha256 "PLACEHOLDER_UPDATE_AFTER_PYPI_PUBLISH"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "claude-primer", shell_output("#{bin}/claude-primer --help 2>&1")
  end
end
