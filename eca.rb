class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.155.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.155.2/eca-native-macos-aarch64.zip"
      sha256 "6a8703dd4a5600251adf4f2893794adf88989ac7aa25fb4635599f5ff7242737"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.155.2/eca-native-macos-amd64.zip"
      sha256 "a1cdc6c8bc23b4048511a0c4d8794a3ab398f53d72ac7c1167ccf907c442711a"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.155.2/eca-native-linux-amd64.zip"
      sha256 "859c0b0eed211560b2fb03ef12bcee54aaa9f80770e4b4d621a62e766e495916"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.155.2/eca-native-static-linux-amd64.zip"
      sha256 "cc0f3afb7d1e29ce46e6b91e32c35c9a6f682607eaf11b9393a1e3540b2efade"
    end
  end

  def install
    bin.install "eca"
  end
end

