class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.58.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.58.0/eca-native-macos-aarch64.zip"
      sha256 "7b721d3733ce61b9a89f0d537136e732efed872fdc82a2d8b535e1b970789575"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.58.0/eca-native-macos-amd64.zip"
      sha256 "df66ecc12010e2069ea43e4a1e2ebd0c179adcc900ab73e78d238b5c4d2cd132"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.58.0/eca-native-linux-amd64.zip"
      sha256 "eddab0c42c5c46107b85728995db1960cd6203c0e4392c45b620a101f5c88c63"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.58.0/eca-native-static-linux-amd64.zip"
      sha256 "f1bf881be098447ff051ea51ad0913599671e53d44c35927491ad382f14dc918"
    end
  end

  def install
    bin.install "eca"
  end
end

