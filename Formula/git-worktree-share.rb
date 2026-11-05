class GitWorktreeShare < Formula
  desc "Share untracked files across git worktrees"
  homepage "https://github.com/keithamus/git-worktree-share"
  url "https://github.com/keithamus/git-worktree-share/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "b8b7d4fd7b3c26f470f31ab4e4b8c3ac3ebf45b541ff2f77d8b191fbc5f9ca26"
  license "MIT"

  def install
    bin.install "bin/git-worktree-share"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-worktree-share --version")
  end
end
