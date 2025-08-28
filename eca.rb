class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.38.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.38.0/eca-native-macos-aarch64.zip"
      sha256 "65120f4001a8d49a2aec4f962c036327bf1a2338b15df51830a6e2fbe9749309"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.38.0/eca-native-macos-amd64.zip"
      sha256 "80d71f4056f49dede39933675f8f2fb90dcb20983607d9c82fccee5d4400c5ef"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.38.0/eca-native-linux-amd64.zip"
      sha256 "281ea7c2db8eabd2d1941cadb1452bcda528a6852bde05553485f9b92946fb81"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.38.0/eca-native-static-linux-amd64.zip"
      sha256 "8f256e5502b74558d4f66a61024089c2b35db82a47cb23b505b9909389b9ccad"
    end
  end

  def install
    bin.install "eca"
  end
end

