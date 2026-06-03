cask "x3fuse" do
  version "0.1.3"
  sha256 "1da1a52fa8cbbe25755338a577003f8698166ba0fc09cc3e9eb9718459e8d6a5"

  url "https://github.com/sagwaco/x3fuse/releases/download/v#{version}/X3Fuse-App.zip"
  name "X3Fuse"
  desc "Converter for Sigma Merrill and Quattro X3F RAW files to DNG, TIFF, and JPEG"
  homepage "https://github.com/sagwaco/x3fuse"

  livecheck do
    url "https://sagwaco.github.io/x3fuse/Support/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "X3Fuse.app"

  zap trash: [
    "~/Library/Application Support/X3Fuse",
    "~/Library/Caches/com.sagwa.X3Fuse",
    "~/Library/HTTPStorages/com.sagwa.X3Fuse",
    "~/Library/Preferences/com.sagwa.X3Fuse.plist",
    "~/Library/Saved Application State/com.sagwa.X3Fuse.savedState",
  ]
end
