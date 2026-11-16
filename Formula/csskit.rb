class Csskit < Formula
  desc "Refreshing CSS: formatter, minifier, linter and more"
  homepage "https://csskit.rs/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/csskit/csskit/releases/download/v0.0.39/csskit-darwin-arm64"
      sha256 "e7eb7eee275c734d65568f9c20f5a86284af6f935630b5b0558cb55c1b449a4a"
    end
    on_intel do
      url "https://github.com/csskit/csskit/releases/download/v0.0.39/csskit-darwin-x64"
      sha256 "26693e28549765d231b1208f1d843df27eb67e2f5b2a9557262381b9caa7b748"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/csskit/csskit/releases/download/v0.0.39/csskit-linux-arm64"
      sha256 "76caabddf366e078a8b252aff88f505aea274b6eca35cad674c18d6d5b61deef"
    end
    on_intel do
      url "https://github.com/csskit/csskit/releases/download/v0.0.39/csskit-linux-x64"
      sha256 "59c2250c068264288459bce3a7ba3ad9fb4de8559d5abbf60a9db6709016c3d4"
    end
  end

  def install
    bin.install Dir["csskit-*"].first => "csskit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/csskit --version")
  end
end
