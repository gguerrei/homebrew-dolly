class Dolly < Formula
  desc "Save the way you build software as a pattern, then apply it anywhere"
  homepage "https://github.com/gguerrei/dolly"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gguerrei/dolly/releases/download/v#{version}/dolly-macos-arm64"
      sha256 "eaa887267b774704fde7076e7f1b1849e7fda87ae0318f3265a497c4fc88f94e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gguerrei/dolly/releases/download/v#{version}/dolly-linux-x64"
      sha256 "af3d34fb4fec4a19608283208d6146dd097b63aaaf0105d910049a12de9ac82e"
    end
  end

  def install
    bin.install Dir["dolly-*"].first => "dolly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dolly --version")
  end
end
