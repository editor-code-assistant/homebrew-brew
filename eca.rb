class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.68.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.68.1/eca-native-macos-aarch64.zip"
      sha256 "fb6640d4cabe1f257240d3037d4b83e9eeed51c9f69a31134a840f80ad3708f1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.68.1/eca-native-macos-amd64.zip"
      sha256 "253178d564a80558d74e9fed1fab9990a3fae27f7a0b3f4f108bb3df75bb0c23"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.68.1/eca-native-linux-amd64.zip"
      sha256 "9b43b2b67063b0be990ffe1450b0faf841d427c274951476e0d5d8a49a242624"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.68.1/eca-native-static-linux-amd64.zip"
      sha256 "f69223ada9c68f7236ecc728f140b21f2cfd3beca210065edcad2d58579c983f"
    end
  end

  def install
    bin.install "eca"
  end
end

