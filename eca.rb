class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.29.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.29.0/eca-native-macos-aarch64.zip"
      sha256 "dc6067d268776ad45bbb53f98d7a2fcfb793a5b02135e8ef5ac946c577b5d1b8"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.29.0/eca-native-macos-amd64.zip"
      sha256 "8b3a95dbb33b9c7561081e0814b14085ee3da63ddd6aba31635fed7243a4de6b"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.29.0/eca-native-linux-amd64.zip"
      sha256 "b9dce2c25ee1a202bc97b0b3e5cbea5e4d89248863e3cc2ae9ede0627eabccd4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.29.0/eca-native-static-linux-amd64.zip"
      sha256 "c78918d29731ad99c19c3a8280064951ee4b4a4cf08bcdf87906321268a828f5"
    end
  end

  def install
    bin.install "eca"
  end
end

