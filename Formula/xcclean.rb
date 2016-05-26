class Xcclean < Formula
  desc "Recover disk space from Xcode."
  homepage "https://saschaholesch.github.io/xcclean/"
  url "https://github.com/saschaholesch/xcclean/archive/1.0.1.zip"
  version "1.0.1"
  sha256 "f29e4455d252ebbbdf435fa95d112ea179df7ff7cdd95ea1eb7b58474a1ad7b4"

  depends_on :macos => :el_capitan

  def install
    xcodebuild "-project", "xcclean.xcodeproj",
               "-target", "xcclean",
               "-configuration", "Release",
               "clean", "install",
               "SYMROOT=build",
               "DSTROOT=build",
               "INSTALL_PATH=/bin"
    bin.install "build/bin/xcclean"
  end

  test do
    system "false"
  end
end
