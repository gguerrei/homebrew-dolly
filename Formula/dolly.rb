class Dolly < Formula
  desc "Save the way you build software as a pattern, then apply it anywhere"
  homepage "https://github.com/gguerrei/dolly"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gguerrei/dolly/releases/download/v#{version}/dolly-macos-arm64"
      sha256 "19f20f7c6f5fbfc511c3a14ad5bf5e47cb207ea002886be5052e82e14fb7c0e7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gguerrei/dolly/releases/download/v#{version}/dolly-linux-x64"
      sha256 "624ff99ab00c62bfb9f0e08825910074122f73f509c7ca91d66b09389d715113"
    end
  end

  def install
    bin.install Dir["dolly-*"].first => "dolly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dolly --version")
  end
end
