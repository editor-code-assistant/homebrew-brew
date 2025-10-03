class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.64.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.64.0/eca-native-macos-aarch64.zip"
      sha256 "1d3941e8b678044d61ecc42f4b79c594c94fbd5f3a7de7d97c2e11e495d33580"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.64.0/eca-native-macos-amd64.zip"
      sha256 "8fe9d5671afec25a9303f743d8ac9a9b3bd7969987b5f1263fb9c39f3d2afd7b"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.64.0/eca-native-linux-amd64.zip"
      sha256 "2c33218be61e44dab1b260eac1dc35757b7bbb430f9486685b2d6e7ada1a1e39"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.64.0/eca-native-static-linux-amd64.zip"
      sha256 "b60b6bb68cfc6ec6b4716f642431f187fedfe2f929edd8c84c87e2e97df2c47e"
    end
  end

  def install
    bin.install "eca"
  end
end

