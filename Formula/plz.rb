class Plz < Formula
  desc "Natural-language to shell-command CLI"
  homepage "https://github.com/sagwaco/pretty-plz"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sagwaco/pretty-plz/releases/download/v0.1.3/plz-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "c7b52c8f6907a7f9d97c15a0abda318c8b26a382dcdf1a002d4437ee7da98824"
    end
    on_intel do
      url "https://github.com/sagwaco/pretty-plz/releases/download/v0.1.3/plz-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "068dfb941528d179ad478bb754bebbf2908ae4bd255579337e8e403eb07ee2e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sagwaco/pretty-plz/releases/download/v0.1.3/plz-v0.1.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "13f64a6401bde937e22733c1f52c9a9dd4afc91ff781c81977554a17120db8c8"
    end
    on_intel do
      url "https://github.com/sagwaco/pretty-plz/releases/download/v0.1.3/plz-v0.1.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0347203d1203204fffa563734b703f570727db86382d4ce0f5eca7b60a0fafbf"
    end
  end

  def install
    bin.install "plz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plz --version")
  end
end
