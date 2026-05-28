class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.135.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.4/eca-native-macos-aarch64.zip"
      sha256 "65ad6568b53219a28cedd27389330913e1b2afe99d13336652d6eb9448a814a9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.4/eca-native-macos-amd64.zip"
      sha256 "423a734106af326d4668dbba3256117bfd9ee6040bd72227b799efab9cc77024"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.4/eca-native-linux-amd64.zip"
      sha256 "783927f0cb9a3a92e640057a585b9d5b4db04d01bd96e4308828a39761f8d57a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.4/eca-native-static-linux-amd64.zip"
      sha256 "5f034afbf75951fb011e860b107481daf5996c85c6ae8d693ec98c33a01f6a17"
    end
  end

  def install
    bin.install "eca"
  end
end

