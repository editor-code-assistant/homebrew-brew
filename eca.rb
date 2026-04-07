class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.124.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.2/eca-native-macos-aarch64.zip"
      sha256 "25739911d68ffc0391a7157f63cdc1d7b6c16f14ace380e5601cd7de28187b5f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.2/eca-native-macos-amd64.zip"
      sha256 "1b012fd9471aa08eca1e4f2b879b5e8defefee81cf8ca9f8d00ba2d70a38de42"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.2/eca-native-linux-amd64.zip"
      sha256 "282932c6ad6c5394f0d4e5ab73198a1159c7bf8e37e4da272f964bc6d28c5409"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.2/eca-native-static-linux-amd64.zip"
      sha256 "11c8b9c99ed6a60523d1029d5ee9e9cf12b20fe6b5dad53367c3945189f891ae"
    end
  end

  def install
    bin.install "eca"
  end
end

