class Riptags < Formula
  desc "Fast tree-sitter symbol search: definitions and cross-references"
  homepage "https://github.com/keithamus/riptags"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/keithamus/riptags/releases/download/v0.2.3/rt-darwin-arm64.tar.gz"
      sha256 "6eb9996bf068e240fbc0f0c603480fd0a83da51b2c49cdd8fbc095e1d0cb6755"
    end
    on_intel do
      url "https://github.com/keithamus/riptags/releases/download/v0.2.3/rt-darwin-x64.tar.gz"
      sha256 "0874d6da776a538d989029275ee0fe647aa7e63bee6d653bee8626ec39f532f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/keithamus/riptags/releases/download/v0.2.3/rt-linux-arm64.tar.gz"
      sha256 "d70e3404111fe33ee39de28c3860e44e1b591ee7bd04f8b9c7ee6d4f3aa94b2f"
    end
    on_intel do
      url "https://github.com/keithamus/riptags/releases/download/v0.2.3/rt-linux-x64.tar.gz"
      sha256 "3066c854d2a6922a4a6261d39b9b20b1256df740e5dc7b8a67e215aab1cf557a"
    end
  end

  def install
    bin.install "rt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rt --version")
  end
end
