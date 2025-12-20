class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.87.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.87.1/eca-native-macos-aarch64.zip"
      sha256 "9662cb488a3dfb6f9d268b3e7f1d429a66a4bdaf3132efcec7dbb8870de254a7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.87.1/eca-native-macos-amd64.zip"
      sha256 "62a8fd3b436d7daacee341c13f2e254b03191bd80a9923ff43f1630655120232"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.87.1/eca-native-linux-amd64.zip"
      sha256 "a377b7d61f1b7c6afce3dc1be0bd4846add99feb066557a32e50247bb7e04025"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.87.1/eca-native-static-linux-amd64.zip"
      sha256 "3a2ace52e7ad5a7850cb43ebb08a309ee601666a120d8f141d9d8cf8af5d8ddd"
    end
  end

  def install
    bin.install "eca"
  end
end

