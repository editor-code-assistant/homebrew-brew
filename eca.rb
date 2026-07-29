class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.151.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.151.0/eca-native-macos-aarch64.zip"
      sha256 "50e04ef754905e5a652b75dce863e90c026b6b6cc4f9ed87a71804be1698e385"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.151.0/eca-native-macos-amd64.zip"
      sha256 "d2043832aba2ecf1d32f197af5f62def9fe978fc875891464ce4c0b67bf91c58"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.151.0/eca-native-linux-amd64.zip"
      sha256 "0cad1c69df8531f55bd3705873c9c53f0e6ebac3b51b6a0db2f6e1d7b660eb44"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.151.0/eca-native-static-linux-amd64.zip"
      sha256 "77c119a8686381a5d7f75c2aabc2abe0b1e979ab631150df8d4d792ba4a1bd8b"
    end
  end

  def install
    bin.install "eca"
  end
end

