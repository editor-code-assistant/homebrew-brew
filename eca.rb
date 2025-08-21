class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.31.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.31.0/eca-native-macos-aarch64.zip"
      sha256 "d101d5dc3c4e1a7c37a8f4f351aeca5dda3a0f86a6c28f62f4bc0801282e39e7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.31.0/eca-native-macos-amd64.zip"
      sha256 "e02a675dd1de290616668e2336b2c951a1dc067adaaabca7447ec5b569544d65"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.31.0/eca-native-linux-amd64.zip"
      sha256 "2c3f629f6180e7855f3769d3cee37e2e1c00e8b8204f816274d07e5d738df13a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.31.0/eca-native-static-linux-amd64.zip"
      sha256 "cdd64d74c7f03eaef8d4e929f2e1003322f903f87b50be79b89c49b7f4355251"
    end
  end

  def install
    bin.install "eca"
  end
end

