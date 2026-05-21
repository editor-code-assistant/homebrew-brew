class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.134.6"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.6/eca-native-macos-aarch64.zip"
      sha256 "c80aa894b34fe311e85cb13c49057391e4fe2956b5fb880a6da8b58740371793"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.6/eca-native-macos-amd64.zip"
      sha256 "640eca7a72875fb0ff0aa5d6405f38aaedec4fa93950a2d95011b8d21302c235"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.6/eca-native-linux-amd64.zip"
      sha256 "fbcab8b223fda7ffafb8f90b857ff75f6d55ab9f669b226b6ff71aa72ab65091"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.6/eca-native-static-linux-amd64.zip"
      sha256 "a838fcdeb18d3a9004f6d21eecd9bb3fbbdffb7e0f124ce04e601ac3bf6630f5"
    end
  end

  def install
    bin.install "eca"
  end
end

