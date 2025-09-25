class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.58.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.58.1/eca-native-macos-aarch64.zip"
      sha256 "f522e5a371c11a8498699eb9f31f90cfa8deea32e53c8e1b8b4110370f0ec748"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.58.1/eca-native-macos-amd64.zip"
      sha256 "43bf6d8d4311799b89f08d609eba450bef2c6e77d1847f18e1156bdfff2d61cc"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.58.1/eca-native-linux-amd64.zip"
      sha256 "29e0bae9b8117ae8e9fd86ae5a15098d6fefb80cd8eecfa0c82a9de89779f419"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.58.1/eca-native-static-linux-amd64.zip"
      sha256 "512f3a44e6cc2c821e25b4581ac406b22b94c078c3a39c29b8a4bdeb955f224a"
    end
  end

  def install
    bin.install "eca"
  end
end

