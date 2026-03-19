class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.115.5"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.5/eca-native-macos-aarch64.zip"
      sha256 "cf22af6f495aa5fdec1892a9f1a025020cda8e64fb2762520d0239981bae3790"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.5/eca-native-macos-amd64.zip"
      sha256 "3bc57c66d04cdf1a4f669bc2b02d76658645854e1c8d4a5e50a4f8b8197c567a"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.5/eca-native-linux-amd64.zip"
      sha256 "6c155c8c55ffe10ede42a7869dd4ed02e136b784ad981cf5d5453383e5b0ba4f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.5/eca-native-static-linux-amd64.zip"
      sha256 "906b66953aeb1ff50caed12a12c75fa3476e6761c52aa09caf25bfa2fce90788"
    end
  end

  def install
    bin.install "eca"
  end
end

