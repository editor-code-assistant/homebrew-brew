class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.116.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.2/eca-native-macos-aarch64.zip"
      sha256 "8603ceae003b7830d99aeceaca6de1997448b8ae89f4383744d7b6170d767a1d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.2/eca-native-macos-amd64.zip"
      sha256 "001b2f60a0b6e1396e0d993279d5c5e74da2c7dd594cd98c8ea2a5deeaf8ee86"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.2/eca-native-linux-amd64.zip"
      sha256 "b9692961abbca7dcc4ff92b28856d4e92060c1d9d013bb1da18e0cac9fe4cd42"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.2/eca-native-static-linux-amd64.zip"
      sha256 "d3f99d7e14277c905f26f5994d140377bcc5efa89964080b0d77851bb6f9071b"
    end
  end

  def install
    bin.install "eca"
  end
end

