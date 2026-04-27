class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.130.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.130.0/eca-native-macos-aarch64.zip"
      sha256 "38ec4b5096c900fced54b0715f0103ea080a3980e73ff98990fe90ad39a25ad0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.130.0/eca-native-macos-amd64.zip"
      sha256 "5a71518b2741fc78cc18985adcb977978d013c1986fc6446f4837865eb2597bf"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.130.0/eca-native-linux-amd64.zip"
      sha256 "efcb688d39509d0dfdf49d898a885dfd25dab65273dd11d6f19510a4d496eb69"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.130.0/eca-native-static-linux-amd64.zip"
      sha256 "225649e8ebc37995c518353aad55c917e415d5bc17316239f0800a03e80a8597"
    end
  end

  def install
    bin.install "eca"
  end
end

