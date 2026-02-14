class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.101.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.101.1/eca-native-macos-aarch64.zip"
      sha256 "b95b6a7f7d7d3259e24e83f4ab20b9d3b061606d494f49c5d67abcef2e69f741"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.101.1/eca-native-macos-amd64.zip"
      sha256 "9f577790627a9c54ca95d13822959202524f5868265706d2d8a678c31cd662f3"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.101.1/eca-native-linux-amd64.zip"
      sha256 "5c21ee5fba4855644848f9dc0b1d43c93ecf581485a5ff8f4746cfb311f9dc82"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.101.1/eca-native-static-linux-amd64.zip"
      sha256 "2af21866267edbd04035081406160a00ef40538a1fc509bfebb3d89ca4005bc6"
    end
  end

  def install
    bin.install "eca"
  end
end

