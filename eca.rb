class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.110.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.110.1/eca-native-macos-aarch64.zip"
      sha256 "ba343afd2643ed22aa2c2dce57c8c7bb9e9e555c85b361646a42d58a7c47bdf1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.110.1/eca-native-macos-amd64.zip"
      sha256 "4ac64470edae91a01be146c03a72cba92dd8bfa391372ffd764996f5b68fdc08"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.110.1/eca-native-linux-amd64.zip"
      sha256 "63769916b284c046fc9f96ecd59eed668d9f5190ec555da0ff6fbf3618a23021"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.110.1/eca-native-static-linux-amd64.zip"
      sha256 "b76e974903da9bdc76da91c5cdd7869c939c9d60f937d31ba19acacc6acf0a34"
    end
  end

  def install
    bin.install "eca"
  end
end

