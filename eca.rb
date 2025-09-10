class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.51.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.51.0/eca-native-macos-aarch64.zip"
      sha256 "2342c34ee9375cc7708aa72a8fd36cd29ccd96bf2a65bce8a30bf81481385bc9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.51.0/eca-native-macos-amd64.zip"
      sha256 "b2c831cb09f4575af1d3ad8bf29f5b6833c69d41302b9b24c6887dae3757f3c4"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.51.0/eca-native-linux-amd64.zip"
      sha256 "6cdadb028016b3f5f8d8bc75c060cc3e609c8e6a109a73bb03694a9a230caeae"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.51.0/eca-native-static-linux-amd64.zip"
      sha256 "ab3ce3df33e5564e0c4337a7df598ed6faa0b9d80107b7b6a142df1ed6946811"
    end
  end

  def install
    bin.install "eca"
  end
end

