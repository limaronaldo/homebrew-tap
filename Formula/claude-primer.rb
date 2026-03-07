class ClaudePrimer < Formula
  include Language::Python::Virtualenv

  desc "Prime your repo for Claude Code — context-aware knowledge architecture generator"
  homepage "https://github.com/limaronaldo/claude-primer"
  url "https://files.pythonhosted.org/packages/source/c/claude-primer/claude_primer-1.3.2.tar.gz"
  sha256 "81c1ff5c5484a59692b9e865141b3f9ce92cb84e0022945c91f6351f8f099d03"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "claude-primer", shell_output("#{bin}/claude-primer --help 2>&1")
  end
end
