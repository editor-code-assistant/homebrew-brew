class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.29.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.29.1/eca-native-macos-aarch64.zip"
      sha256 "26ffb12ddcd94af3fa9826245ba821cdc2e3bbf1f4620eb108861ab09120a1ff"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.29.1/eca-native-macos-amd64.zip"
      sha256 "1041bcd3ff8ef0633f75ff0bbb0a17b870cd453b8e27351dfaaed074279f339f"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.29.1/eca-native-linux-amd64.zip"
      sha256 "2f9fbdd4bcf7c03568ff822fcef9106f03e7a56dbcb0fd8678d96b1a72fbddf6"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.29.1/eca-native-static-linux-amd64.zip"
      sha256 "c5d240bf74b35ef372298e4c8ab742ddb4369025083f058f2835f4a0aaf9b23f"
    end
  end

  def install
    bin.install "eca"
  end
end

