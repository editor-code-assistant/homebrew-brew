class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.120.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.120.1/eca-native-macos-aarch64.zip"
      sha256 "ffcbca4b269292108950a3888dbee4f34e1c9a22ffddce4179dbf201fb0e2ace"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.120.1/eca-native-macos-amd64.zip"
      sha256 "48c7d60293059b2ebac57975cd8cb5a5d4be2f044be603ab28018baf3d432bc8"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.120.1/eca-native-linux-amd64.zip"
      sha256 "805b60e5169db0c6812292d46921466040c0c34c33249e19640d19118ce17251"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.120.1/eca-native-static-linux-amd64.zip"
      sha256 "0de5f9c638f67e7614fa64a4b8a088e527f0a2fc7d3376a5802af70fddd69291"
    end
  end

  def install
    bin.install "eca"
  end
end

