class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.116.5"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.5/eca-native-macos-aarch64.zip"
      sha256 "a5c5d81054db5f4b215b65656948366c00e8afd7f079abffd43c8a87063d2f4a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.5/eca-native-macos-amd64.zip"
      sha256 "234b52592fee142bf990a6be6ca32bf8e82f3305b7df653cdf18e643cb3b5a08"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.5/eca-native-linux-amd64.zip"
      sha256 "5913734750600d827739308981d9eb1b19ca40fe3839df479dd11e59363a7ee9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.5/eca-native-static-linux-amd64.zip"
      sha256 "1da1468171ba883d1b92095ad22bb605fa78ffa866ef2671b453da31193a4dca"
    end
  end

  def install
    bin.install "eca"
  end
end

