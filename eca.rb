class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.70.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.1/eca-native-macos-aarch64.zip"
      sha256 "5c3b56b537464add827901ace3913b0c048e5347281f537f3776b1ab4eaf2ba4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.1/eca-native-macos-amd64.zip"
      sha256 "dc02efded82803ebbf2f199611108d002339c1656f98d2438cde792c6651090c"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.1/eca-native-linux-amd64.zip"
      sha256 "648f6fd520ea5395f30f99b8b2751099231d5b958823a6a81d6b8e09ffe77749"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.1/eca-native-static-linux-amd64.zip"
      sha256 "5714748f4e8796ef5cf91bce3d697fae112ee64339234f3a4be0eaecd3dac0e9"
    end
  end

  def install
    bin.install "eca"
  end
end

