class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.79.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.79.1/eca-native-macos-aarch64.zip"
      sha256 "5695a9002743f00cd7193780552cf65b931de4cbde483f27a24f1a4e4899f78c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.79.1/eca-native-macos-amd64.zip"
      sha256 "4ae2f3c69f7883e48315bf4b179d31b29c986e596b2d685130b9191dd3055672"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.79.1/eca-native-linux-amd64.zip"
      sha256 "2de9a0b2b43b1465442b00924df7ab0ec491a0c148d50cdeabcbfa41420c104e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.79.1/eca-native-static-linux-amd64.zip"
      sha256 "3139d244ca70cce2fe6bf3bc3afde1765be026d904a5e60095eb4182c996fa26"
    end
  end

  def install
    bin.install "eca"
  end
end

