class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.142.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.142.1/eca-native-macos-aarch64.zip"
      sha256 "c2f83ae73b676dc5dc67ba7dcbbda25db3fc40305cd7842c5a9c7a8d7bc1f45b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.142.1/eca-native-macos-amd64.zip"
      sha256 "a3602078d74dde2bf67f8528bac271872e9b4c89cfde1097c1aa178a51bf8f32"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.142.1/eca-native-linux-amd64.zip"
      sha256 "af4f8a0123712b64fcfdc913419a89fefa8fd332d4c96a7a9c8d573b41d6d342"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.142.1/eca-native-static-linux-amd64.zip"
      sha256 "a7590aa6530df17436c02c05b45e5b69527325585a6977d1a95b985f3ee46172"
    end
  end

  def install
    bin.install "eca"
  end
end

