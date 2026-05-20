class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.134.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.4/eca-native-macos-aarch64.zip"
      sha256 "bbf9f13661be1262b798ff6611ba2bdb5cb1b2d4291b5358c81968af162da010"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.4/eca-native-macos-amd64.zip"
      sha256 "be26a68a32d5d3521a2e644e2c4027c1dd8a228cb6c59edf724b5af341674f86"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.4/eca-native-linux-amd64.zip"
      sha256 "f225f4589b5ed019b28440f6bc0953bfa0cf5d55899e36a0c335b2713510db5e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.4/eca-native-static-linux-amd64.zip"
      sha256 "21e91af97dd08d7f8f1877c698f0815572167d84236f4511e0c223161c29973e"
    end
  end

  def install
    bin.install "eca"
  end
end

