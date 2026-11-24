class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.174.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.174.0/eca-native-macos-aarch64.zip"
      sha256 "385f3127d1980c3fa2ddd78ebe98b374b35c73bbb2e9c6d8a94f430888f9d7bf"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.174.0/eca-native-macos-amd64.zip"
      sha256 "38cf401cff3919ae993b732d8d43c3839cdbf3d5c5f2ef66c5b4a96f62b14111"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.174.0/eca-native-linux-amd64.zip"
      sha256 "850aee04f47c8623f24ac06a49349efa098f4dff940f277304bc5e5081c45319"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.174.0/eca-native-static-linux-amd64.zip"
      sha256 "63a7997c46b59e78e856ad473eb7e4324efd5d2fd149ec08dfb4d305df4de21d"
    end
  end

  def install
    bin.install "eca"
  end
end

