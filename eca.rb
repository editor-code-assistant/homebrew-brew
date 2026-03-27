class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.119.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.119.0/eca-native-macos-aarch64.zip"
      sha256 "b709c89f309a1ee58b67b57548b345541fa59205609e52e91d523b34fcfbb6e6"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.119.0/eca-native-macos-amd64.zip"
      sha256 "7d11cb31b84ab072434dc57f5d380b5e68132eb1d76033953311bd8dfb4547b1"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.119.0/eca-native-linux-amd64.zip"
      sha256 "64e3f48625b76783879c0b0735f51cd84a16aee74eb9e17ec6f4e90931489cf9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.119.0/eca-native-static-linux-amd64.zip"
      sha256 "65dc4772ce572d7151aa5d45a3c8caf07698dca5d53d40c51b23bd67a06f063b"
    end
  end

  def install
    bin.install "eca"
  end
end

