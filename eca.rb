class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.105.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.105.0/eca-native-macos-aarch64.zip"
      sha256 "e0d51d258ed93de8e5cce2f58d6a0f4e42ad84d5292e0e1240da543ec7d34d5a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.105.0/eca-native-macos-amd64.zip"
      sha256 "3269fde11e86056f48957428cf8ad4ef65d6d82bec3255e933c64257430edbfe"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.105.0/eca-native-linux-amd64.zip"
      sha256 "009c3b21d9d2355b7056b555f2c39953f083a133f77aaf73ac4f7f65daef2f5a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.105.0/eca-native-static-linux-amd64.zip"
      sha256 "2d04a2452a41c77f3ec80a92bf8dafe347f9481ec6d4a42c2148a43d779299f1"
    end
  end

  def install
    bin.install "eca"
  end
end

