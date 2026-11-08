class Tongs < Formula
  desc "Let coding agents use your API keys without seeing them"
  homepage "https://tongs.roamake.com"
  url "https://github.com/achjqz/tongs/releases/download/v0.1.0/tongs-macos-universal.tar.gz"
  version "0.1.0"
  sha256 "d3401be9229550caf79a2df81842d8d086f7e180a7c9aacd0d0ce6675ec0c946"
  license "Apache-2.0"

  depends_on macos: :sequoia

  def install
    bin.install "tongs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tongs --version")
  end
end
