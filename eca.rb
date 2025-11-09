class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.78.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.1/eca-native-macos-aarch64.zip"
      sha256 "f1fbdc835bda9b591d145014b1765809912fa2c2a4e07238bde09a2a8083d4bb"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.1/eca-native-macos-amd64.zip"
      sha256 "2f72b9fdb2cda6da464d026ff244ab06e4be23a7768d98119cb3f555744b3e5c"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.1/eca-native-linux-amd64.zip"
      sha256 "4136a2f6c722ab69762a1bb6cd780f170f22efc575ed3a19fb7b8d2830be278d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.1/eca-native-static-linux-amd64.zip"
      sha256 "7426f4e15771f7d077751f8ea61ff743509f7c5c01ac4151a215f321be908c07"
    end
  end

  def install
    bin.install "eca"
  end
end

