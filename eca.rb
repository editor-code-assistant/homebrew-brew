class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.72.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.72.0/eca-native-macos-aarch64.zip"
      sha256 "ccdf0db383e794719b1bc0a80fed7e4c7431b90360baa2ed2086390482a272c8"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.72.0/eca-native-macos-amd64.zip"
      sha256 "904a25d4a0697d556e393d7963df2ed915ae88f20012dc2cd4b89deb1eea06cf"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.72.0/eca-native-linux-amd64.zip"
      sha256 "2353e129cf6bf1d730c020a58e409bc448fe47d4da1018288b8866defc18c8a1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.72.0/eca-native-static-linux-amd64.zip"
      sha256 "032705b99a92a5dbc4aeda61b73f2381e92b59e04a9eabcfbd07ca22e62e6840"
    end
  end

  def install
    bin.install "eca"
  end
end

