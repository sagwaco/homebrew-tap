class Plz < Formula
  desc "Natural-language to shell-command CLI"
  homepage "https://github.com/sagwaco/pretty-plz"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sagwaco/pretty-plz/releases/download/v0.1.2/plz-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "7cf2c21c64dd6832fd8d73070137de52fab9b3ce9a14ef6673fc49d4e584a5af"
    end
    on_intel do
      url "https://github.com/sagwaco/pretty-plz/releases/download/v0.1.2/plz-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "8f9f51417a838723f9f7ca34f6cd8f636d707aa30b3e1b2cc69d52d4843cc4ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sagwaco/pretty-plz/releases/download/v0.1.2/plz-v0.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c421bf365ad8ff9e5a512942be10d366c661cdbc58d4048931e022f7bbe0823e"
    end
    on_intel do
      url "https://github.com/sagwaco/pretty-plz/releases/download/v0.1.2/plz-v0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "61e0e081254f8affbc1c5ba007559666d7597608db14737b888f3f8f3659b1f7"
    end
  end

  def install
    bin.install "plz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plz --version")
  end
end
