class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.146.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.146.0/eca-native-macos-aarch64.zip"
      sha256 "65c9b9dac184bb6933b5db9b1c092f3f47e6eb26167db32105050b017526cea4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.146.0/eca-native-macos-amd64.zip"
      sha256 "f76647dfe62489b2fad5c0f167df6495b0a6b560eea7bc22a1e65feb8ae062c4"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.146.0/eca-native-linux-amd64.zip"
      sha256 "05dd1a09be2e936d5cbec485fe9de05103f94796130233dfbbfe969922a97176"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.146.0/eca-native-static-linux-amd64.zip"
      sha256 "f3942e22a17f95d8d236e6af01762d0afbb9a95eaed50efe3f5abbd1eb4679d5"
    end
  end

  def install
    bin.install "eca"
  end
end

