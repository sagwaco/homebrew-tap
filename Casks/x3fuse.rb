cask "x3fuse" do
  version "0.1.5"
  sha256 "30cb3391ecf5552d0f473fd429ee2a0827c1ccd288df31756f4d8deb3e910204"

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
