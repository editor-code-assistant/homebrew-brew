class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.38.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.38.3/eca-native-macos-aarch64.zip"
      sha256 "6488ea5f6f5f0277ed7a3cef7d9f9fb0849501835213360076df845465b979f0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.38.3/eca-native-macos-amd64.zip"
      sha256 "156495324e28a423133fa4790b20ef3848a98d56f79c99096f9ee6eae0117162"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.38.3/eca-native-linux-amd64.zip"
      sha256 "412e44dc0bb466225a5da0a26209f13ce5723de9a6624992db3df2a3bcc7ddaf"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.38.3/eca-native-static-linux-amd64.zip"
      sha256 "2ffc4d1a91a0b30cc8bb21d60213581c10631a472835c4510f10e91c7c8c9bf9"
    end
  end

  def install
    bin.install "eca"
  end
end

