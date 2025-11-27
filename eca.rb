class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.84.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.84.2/eca-native-macos-aarch64.zip"
      sha256 "4df21f45bfa8ae1544464c0d8c6dc795dcae226cfd9215f2273c9a69954ddf02"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.84.2/eca-native-macos-amd64.zip"
      sha256 "a0e97188c2f5df0564e17dc2ac15cc7b5d7922fe6f623a3ec5de1d22c5821984"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.84.2/eca-native-linux-amd64.zip"
      sha256 "b8442cd63c00371dffa1826b4f86a334d28dec919a1ad2dd7aab770ab9aac4e5"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.84.2/eca-native-static-linux-amd64.zip"
      sha256 "2fad38d6ac2ff465adaa4ae0acc6bf83b63cbb465a409bdf7be7867c2dcda426"
    end
  end

  def install
    bin.install "eca"
  end
end

