class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.34.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.34.1/eca-native-macos-aarch64.zip"
      sha256 "cf78b6c5caead7254cd09716c6bd4e8405275509246784ceff0e310cce541019"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.34.1/eca-native-macos-amd64.zip"
      sha256 "88c74c268b3c823bc442bf1635617921662c3851e4119b504da0570cb4b49479"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.34.1/eca-native-linux-amd64.zip"
      sha256 "3c27c5a659e685c14d36505e431754ae27e7ad5a3af27868a00d514a02492e73"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.34.1/eca-native-static-linux-amd64.zip"
      sha256 "994ae902b6fb66ad354654f73f48e816df3588cbdbe432ec81a30a9c64f45268"
    end
  end

  def install
    bin.install "eca"
  end
end

