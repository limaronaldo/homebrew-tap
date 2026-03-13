class ClaudePrimer < Formula
  desc "Prime your repo for Claude Code"
  homepage "https://github.com/limaronaldo/claude-toolkit"
  url "https://github.com/limaronaldo/claude-toolkit/releases/download/primer-v1.8.0/claude-primer-v1.8.0.tar.gz"
  version "1.8.0"
  license "MIT"
  depends_on "python@3.12"

  on_macos do
    on_arm do
      sha256 "5a7532ac315436185c6f9ae5185b87463ab6324a6eb5b2191eb623dbf23aea24"
    end
    on_intel do
      sha256 "8da6cf5fc3036b49e640dcad9431022d2ad30c48c2d1dc6110f9f62399672271"
    end
  end

  on_linux do
    on_arm do
      sha256 "2ee8a1e35eb04f070794fcd80b13b61d7f67d12d340c8e4ef3d945e579e13f21"
    end
    on_intel do
      sha256 "0f4ca9f9f3658cd9f4562bdf3939ab09332ab7d89c2669d99d14034539118bd3"
    end
  end

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
