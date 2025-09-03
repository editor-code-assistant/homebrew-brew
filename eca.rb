class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.45.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.45.0/eca-native-macos-aarch64.zip"
      sha256 "7901876d3b24aaade2b93fc39be6ab230be887d2b47d56f6eb81dee3121d74f7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.45.0/eca-native-macos-amd64.zip"
      sha256 "eca61bfd3e9000ef970a0d5baee99549f8c64e6de71b6e82fc22133e877e2494"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.45.0/eca-native-linux-amd64.zip"
      sha256 "e1a065749ba71b9bdf2354a03e10d9f30601a948b5541413b5ab7b46cb9fc891"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.45.0/eca-native-static-linux-amd64.zip"
      sha256 "9c108472c5838b60392d340119d24e2e2ab808d174e03f1963561ad12c27248c"
    end
  end

  def install
    bin.install "eca"
  end
end

