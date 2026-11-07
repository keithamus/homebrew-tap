class Csskit < Formula
  desc "Refreshing CSS: formatter, minifier, linter and more"
  homepage "https://csskit.rs/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/csskit/csskit/releases/download/v0.0.37/csskit-darwin-arm64"
      sha256 "455524bd92be23587631d2c172f088a1569ea7f9a7b57e32a2775f5da83e53cd"
    end
    on_intel do
      url "https://github.com/csskit/csskit/releases/download/v0.0.37/csskit-darwin-x64"
      sha256 "cd3bdf37a0b54e55458079d8482b2cfd3c962b984b387d9d9d68beead22881e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/csskit/csskit/releases/download/v0.0.37/csskit-linux-arm64"
      sha256 "0f932dea3b4d31a3b5d17a984ac7ac763221e7f87a22edaf920d1cd497a8abe5"
    end
    on_intel do
      url "https://github.com/csskit/csskit/releases/download/v0.0.37/csskit-linux-x64"
      sha256 "7940d3313fc1fee01f9be46fca910c4876cc61f3a430b3806933329f6df264c9"
    end
  end

  def install
    bin.install Dir["csskit-*"].first => "csskit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/csskit --version")
  end
end
