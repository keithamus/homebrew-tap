class Riptags < Formula
  desc "Fast tree-sitter symbol search: definitions and cross-references"
  homepage "https://github.com/keithamus/riptags"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/keithamus/riptags/releases/download/v0.2.0/rt-darwin-arm64.tar.gz"
      sha256 "cdb9c1e2d76e7886bd2d3a472d9c00ea49ae6a380d4969a98c6ce5b00456b15b"
    end
    on_intel do
      url "https://github.com/keithamus/riptags/releases/download/v0.2.0/rt-darwin-x64.tar.gz"
      sha256 "f0e93c2efe953edddaa85717c1f1df672c68b227c3665984b093549da706146f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/keithamus/riptags/releases/download/v0.2.0/rt-linux-arm64.tar.gz"
      sha256 "9061106055b8d157fa8b8edc2906c4a4f818733d8b03a83c67ac2ec2137ae101"
    end
    on_intel do
      url "https://github.com/keithamus/riptags/releases/download/v0.2.0/rt-linux-x64.tar.gz"
      sha256 "9354e27d25ecd6ebddbadc5e031e8c10e6b0b9fbbd30a6138eda22cab9f82032"
    end
  end

  def install
    bin.install "rt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rt --version")
  end
end
