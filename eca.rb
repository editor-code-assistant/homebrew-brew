class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.76.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.76.0/eca-native-macos-aarch64.zip"
      sha256 "7d3a8de750b1dddaa946f8699df04e2430e634ef95cdaa0282d7c833fe85d2cf"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.76.0/eca-native-macos-amd64.zip"
      sha256 "868c6c8ee58dfec981f619fcbdf382a6cbfa769b32e99d927cc660c04ac20dbf"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.76.0/eca-native-linux-amd64.zip"
      sha256 "338124194330bd05a00c6272cd7d8789478b95c581a0c8f6b6fd68d0b2c33cd7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.76.0/eca-native-static-linux-amd64.zip"
      sha256 "f2fef31eee84a39bc7280605e7398488788baa8b921225f2f8f3e5a8cdbcbc5b"
    end
  end

  def install
    bin.install "eca"
  end
end

