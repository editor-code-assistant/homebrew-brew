class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.50.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.50.1/eca-native-macos-aarch64.zip"
      sha256 "e631bb98abb7131168a3849a7809749c1c741bc7df019fad322e8f1e90f4d8bc"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.50.1/eca-native-macos-amd64.zip"
      sha256 "9046ae5358ce08ebdb3a38621e5b0c8e204384a2b293f4441ada964c236971d2"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.50.1/eca-native-linux-amd64.zip"
      sha256 "afa640bb3c8b05ad0d7d4feebd33119ff3e1284af5acee086eda65cdb34343c6"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.50.1/eca-native-static-linux-amd64.zip"
      sha256 "0f0ece410bb93e8539ee151ca7066711be208ba3204a7c04bf2add90994067a0"
    end
  end

  def install
    bin.install "eca"
  end
end

