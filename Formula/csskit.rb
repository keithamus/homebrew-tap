class Csskit < Formula
  desc "Refreshing CSS: formatter, minifier, linter and more"
  homepage "https://csskit.rs/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/csskit/csskit/releases/download/v0.0.38/csskit-darwin-arm64"
      sha256 "d34bc2a063265892e9bff86b013aab61396e7548bf350156d61218b4a8f691a6"
    end
    on_intel do
      url "https://github.com/csskit/csskit/releases/download/v0.0.38/csskit-darwin-x64"
      sha256 "5dc3897d0a5f836adf64f5e553c8a586d11cd4aa8a09c724c2448d6a3d373894"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/csskit/csskit/releases/download/v0.0.38/csskit-linux-arm64"
      sha256 "3eef0941fb066aab457edc67de013c726de557945fb1e8146cc2e8d29b9c1a4a"
    end
    on_intel do
      url "https://github.com/csskit/csskit/releases/download/v0.0.38/csskit-linux-x64"
      sha256 "ae5f3020645bd18cb3a66cef0d94857594a273890b32a8b9dce4d6c0d8940c59"
    end
  end

  def install
    bin.install Dir["csskit-*"].first => "csskit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/csskit --version")
  end
end
