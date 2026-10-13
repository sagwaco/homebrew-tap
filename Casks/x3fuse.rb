cask "x3fuse" do
  version "0.1.8"
  sha256 "3647b523fbab1f9f1174f3b55228bd562815b7b82c12e177d2cd5fe7342175ad"

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
