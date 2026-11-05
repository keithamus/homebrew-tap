class GitWorktreeShare < Formula
  desc "Share untracked files across git worktrees"
  homepage "https://github.com/keithamus/git-worktree-share"
  url "https://github.com/keithamus/git-worktree-share/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "91c0eb14e393f36e8fc847a863627a9d37f516ccf0b424cfe9e2a3202c2daf7f"
  license "MIT"

  def install
    bin.install "bin/git-worktree-share"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-worktree-share --version")
  end
end
