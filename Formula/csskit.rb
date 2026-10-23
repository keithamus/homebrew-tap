class Csskit < Formula
  desc "Refreshing CSS: formatter, minifier, linter and more"
  homepage "https://csskit.rs/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/csskit/csskit/releases/download/v0.0.35/csskit-darwin-arm64"
      sha256 "f257f6e80c3315d3626f21717af96dc6d955d4b58bf83b6471a865176b0c88a1"
    end
    on_intel do
      url "https://github.com/csskit/csskit/releases/download/v0.0.35/csskit-darwin-x64"
      sha256 "fa6ea3c05a1d7fcb61414fcf9092f9ecda9a52202d2b46f7dac906ec3bce7996"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/csskit/csskit/releases/download/v0.0.35/csskit-linux-arm64"
      sha256 "99df1783cbcab39c029ce3a5eb1229ffb6f7467146b621f61b73e310686946e5"
    end
    on_intel do
      url "https://github.com/csskit/csskit/releases/download/v0.0.35/csskit-linux-x64"
      sha256 "384772bc8bde15a9b97d3cb0623b317161619b2a16658857498999aae95d913b"
    end
  end

  def install
    bin.install Dir["csskit-*"].first => "csskit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/csskit --version")
  end
end
