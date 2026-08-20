class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.155.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.155.1/eca-native-macos-aarch64.zip"
      sha256 "66aa094c0fa673d5d548fbb138421d084d60ff12836bdd3b66bc1d0507639b5f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.155.1/eca-native-macos-amd64.zip"
      sha256 "303117a9d4c7e8d4fe24c3c8a000ff51b4a11fe7478ac43b8d2567d8b8a3a326"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.155.1/eca-native-linux-amd64.zip"
      sha256 "08c848f802b82620a7e5a260c80b55acc564d0fade5fad52abcd2435e3619e3b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.155.1/eca-native-static-linux-amd64.zip"
      sha256 "5134c9004d2baf057844ae2e13c3a6c46eb0579674d74dfd93403ae7ad762fcb"
    end
  end

  def install
    bin.install "eca"
  end
end

