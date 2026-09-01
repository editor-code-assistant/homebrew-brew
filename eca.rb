class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.158.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.158.0/eca-native-macos-aarch64.zip"
      sha256 "0a226bb218217f3b37d2dc39d276e0305d7c4937f9121f4c4e171576f82ce1bd"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.158.0/eca-native-macos-amd64.zip"
      sha256 "c76a747c8f0d13ba921a81dba50a1845399d021727b2af6277f8e12430005ee6"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.158.0/eca-native-linux-amd64.zip"
      sha256 "ac15bbd40bf6e081ba3056f6b3511443d0799d27fea89813de61bcdd43bd0452"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.158.0/eca-native-static-linux-amd64.zip"
      sha256 "c27a185db2da6dbb98fd535a7b129ec260a89ac78fb9cedb7509a2df1ae62888"
    end
  end

  def install
    bin.install "eca"
  end
end

