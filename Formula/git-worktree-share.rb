class GitWorktreeShare < Formula
  desc "Share untracked files across git worktrees"
  homepage "https://github.com/keithamus/git-worktree-share"
  url "https://github.com/keithamus/git-worktree-share/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "c9ca84c2f53377ad3b844be4466665fdfa40c153f43e6fafd251d46a92c7879c"
  license "MIT"

  def install
    bin.install "bin/git-worktree-share"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-worktree-share --version")
  end
end
