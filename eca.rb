class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.146.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.146.2/eca-native-macos-aarch64.zip"
      sha256 "2d3af0a132889006ea2c6c8f6d6e39625fe08f2235ad1247dc61f70622877a10"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.146.2/eca-native-macos-amd64.zip"
      sha256 "7ef82d4690d2238bb856f29b03bbd520779b8e6a0c6ac8ac00a35509295c2cb3"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.146.2/eca-native-linux-amd64.zip"
      sha256 "59c569fa3948cc4b873b719311e74ae3204f8f249f638172d01e2ce133b002db"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.146.2/eca-native-static-linux-amd64.zip"
      sha256 "2d19b9a30a6a0ac15eb17de597c12de5c5add968c87cf4b8b360f40ff1161ee3"
    end
  end

  def install
    bin.install "eca"
  end
end

