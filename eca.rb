class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.50.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.50.2/eca-native-macos-aarch64.zip"
      sha256 "242ec0559a26f5e302775c32b2850019fc66423627d2c13f4e168cbcfe9695dd"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.50.2/eca-native-macos-amd64.zip"
      sha256 "fdf6cadfba7e84aa3138d13e16179a0b811f720e10bd32e6ccdb5284d1cabe84"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.50.2/eca-native-linux-amd64.zip"
      sha256 "06899e30d0d67fa55d29e7f14de1098e8c237529d32caa5b2d3f6416478f11c6"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.50.2/eca-native-static-linux-amd64.zip"
      sha256 "cb157bbd857593f694382596ad5ebef578c3eb5b5bb56943418354f38d0e3bf1"
    end
  end

  def install
    bin.install "eca"
  end
end

