class Csskit < Formula
  desc "Refreshing CSS: formatter, minifier, linter and more"
  homepage "https://csskit.rs/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/csskit/csskit/releases/download/v0.0.41/csskit-darwin-arm64"
      sha256 "ad05fe78bdab85c3c4380f8994884b4cb82d7a997074013b8b4931f10e121d5a"
    end
    on_intel do
      url "https://github.com/csskit/csskit/releases/download/v0.0.41/csskit-darwin-x64"
      sha256 "6a08044e76501a71a008d60a31fcfe0eb560a2c3138e7650507063403e50b62e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/csskit/csskit/releases/download/v0.0.41/csskit-linux-arm64"
      sha256 "33f1e112b5a6f6a78b1775714f9b59bb60d4d85e5dcdb2f29ac78acfbd8f73b4"
    end
    on_intel do
      url "https://github.com/csskit/csskit/releases/download/v0.0.41/csskit-linux-x64"
      sha256 "0c76d12ecdefcfc029fdf2497f0f6d0a75baf42a1656c30af5799ab595a6b6ec"
    end
  end

  def install
    bin.install Dir["csskit-*"].first => "csskit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/csskit --version")
  end
end
