class Csskit < Formula
  desc "Refreshing CSS: formatter, minifier, linter and more"
  homepage "https://csskit.rs/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/csskit/csskit/releases/download/v0.0.36/csskit-darwin-arm64"
      sha256 "6dc5f9447e7c0dd1360db932899661f64cdb5b4c41feb3bf6f9799ded8b74716"
    end
    on_intel do
      url "https://github.com/csskit/csskit/releases/download/v0.0.36/csskit-darwin-x64"
      sha256 "42ebf8414f9272f17905012d4d97820ccb80afc01796838680e4ffc140b690d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/csskit/csskit/releases/download/v0.0.36/csskit-linux-arm64"
      sha256 "962e807054e58dfdb0b9197987a94e4818194bb440b4c2035f4f89240b18c052"
    end
    on_intel do
      url "https://github.com/csskit/csskit/releases/download/v0.0.36/csskit-linux-x64"
      sha256 "677887b28364ba4ff3954bb490ffaffcdf41600ad4e293eefc80fb8fd21e6fbf"
    end
  end

  def install
    bin.install Dir["csskit-*"].first => "csskit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/csskit --version")
  end
end
