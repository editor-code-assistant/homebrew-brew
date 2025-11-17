class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.79.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.79.0/eca-native-macos-aarch64.zip"
      sha256 "327412fc374206a62bdc204a139839e691ee56458cbf00e82f1ace363f5f84a8"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.79.0/eca-native-macos-amd64.zip"
      sha256 "d89d83af107e6b095231c5c47ba2b6f9ede30cc60e1309148e9c47972b549a0a"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.79.0/eca-native-linux-amd64.zip"
      sha256 "7006ddd8c6d67242e0d5e08bfe2480001e3b884331cc5a3cbf85d522e40dd4d8"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.79.0/eca-native-static-linux-amd64.zip"
      sha256 "76ea8b9bf08b3787d172c298e28f4cf06d0fdf83ab2b549c02e2b66c14df3fc5"
    end
  end

  def install
    bin.install "eca"
  end
end

