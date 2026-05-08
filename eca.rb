class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.133.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.3/eca-native-macos-aarch64.zip"
      sha256 "f133f0b2d4e7859afa2deef81e7ce2bf73a93e2d5f9bdf05d239f9df276302d5"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.3/eca-native-macos-amd64.zip"
      sha256 "de8f1cf66d4eaa0598c289eba5a576de050763272e4c37cec0e14f58822dee11"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.3/eca-native-linux-amd64.zip"
      sha256 "d493e8f9df9f8ca9883d0cbc01723940fd3a5c20d5a764de51ed5a36918cc52f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.3/eca-native-static-linux-amd64.zip"
      sha256 "64026106e704d1de12d313b8a557bad7001a29cc0d940308dbd6f5517bab7faa"
    end
  end

  def install
    bin.install "eca"
  end
end

