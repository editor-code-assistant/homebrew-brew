class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.157.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.157.0/eca-native-macos-aarch64.zip"
      sha256 "826afabed8115828ae4a58a33c8ff432f72041da0fcbc2b2401efbe1dac93e02"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.157.0/eca-native-macos-amd64.zip"
      sha256 "9425842c2f12e6d5ada6a06736adb838f2ef6e72df311657802b00ba6a1502a9"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.157.0/eca-native-linux-amd64.zip"
      sha256 "7eebeac4e0daa01042286e7b9432ecbc83a5fdde69f8c29d361befe7ce8bbfe3"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.157.0/eca-native-static-linux-amd64.zip"
      sha256 "c008e7fa0f5ddef68843a417ef06796c2565ebaf1ee67392541fa2f0b5ee405b"
    end
  end

  def install
    bin.install "eca"
  end
end

