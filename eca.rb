class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.147.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.147.0/eca-native-macos-aarch64.zip"
      sha256 "0193a1e4c6ae4fbfdfe9e1ae722a291161dd0dc06454ad54069485e80561e381"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.147.0/eca-native-macos-amd64.zip"
      sha256 "ac1491ae9c7a0418ab845b5794579615a20c67bb0808993ad4c22d95b360e698"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.147.0/eca-native-linux-amd64.zip"
      sha256 "76b4e60fb2ed6dad3e597d127bf64692f6da848798453f7caac5078d00f0a4fb"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.147.0/eca-native-static-linux-amd64.zip"
      sha256 "b9f07bad15a7818f713e3eeefd8f780b9fd5c956d8f6ce0a491568a0dff41dd4"
    end
  end

  def install
    bin.install "eca"
  end
end

