class Dolly < Formula
  desc "Save the way you build software as a pattern, then apply it anywhere"
  homepage "https://github.com/gguerrei/dolly"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gguerrei/dolly/releases/download/v#{version}/dolly-macos-arm64"
      sha256 "7cf2f92541af33102d8c97ed411434375ea8d49aa01bdcb445bfa475757fb4e4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gguerrei/dolly/releases/download/v#{version}/dolly-linux-x64"
      sha256 "f44a50a7420216da3a236e5ba63dd68d942eaec9249acb867b5cf1d8582bc0dc"
    end
  end

  def install
    bin.install Dir["dolly-*"].first => "dolly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dolly --version")
  end
end
