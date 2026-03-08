class ClaudePrimer < Formula
  desc "Prime your repo for Claude Code"
  homepage "https://github.com/limaronaldo/claude-primer"
  url "https://github.com/limaronaldo/claude-primer/releases/download/v1.7.0/claude-primer-v1.7.0.tar.gz"
  version "1.7.0"
  license "MIT"
  depends_on "python@3.12"

  on_macos do
    on_arm do
      sha256 "b4078f0125261070e944dffe87f8767721fe93061b7214b6dc70f677562b4d6a"
    end
    on_intel do
      sha256 "472e1df38fc84feebb7efd5de929d429b86d0c38224008078038747a8558a489"
    end
  end

  on_linux do
    on_arm do
      sha256 "ac682cd75fae25823da551bf8d50d58ef998c8234dc84a0589eb671a8231a108"
    end
    on_intel do
      sha256 "d17b4955da1988f699788c0d0f2fdf80e650a9ceb66dba1532b295d5c72eb3b9"
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
