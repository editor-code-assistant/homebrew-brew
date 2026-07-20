class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.148.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.148.0/eca-native-macos-aarch64.zip"
      sha256 "52fa67967bf3b5de9b2b81647b224b1a82d97991dfdf095ba953c7141cf20bd2"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.148.0/eca-native-macos-amd64.zip"
      sha256 "ebdca574ddc3e8d08cccf1c50e1cae9a7c2e2203f99df912a05a8e00fbc003c1"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.148.0/eca-native-linux-amd64.zip"
      sha256 "afb52df74b1f6db6f67164dbd14c89578df410a16b309469f7a94f83274d70f4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.148.0/eca-native-static-linux-amd64.zip"
      sha256 "5120b660e150b881bd8de36395f1a5755035a642cb00f08105423830d665c042"
    end
  end

  def install
    bin.install "eca"
  end
end

