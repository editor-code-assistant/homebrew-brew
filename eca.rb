class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.123.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.123.3/eca-native-macos-aarch64.zip"
      sha256 "d82061d27127be4083273fe2181532c56c58e9f9691dd49c27fe2439441a3e54"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.123.3/eca-native-macos-amd64.zip"
      sha256 "b00244a4502d7cfe5201dd46bea7b50ee7215c5fb516402a0a120473a550fb34"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.123.3/eca-native-linux-amd64.zip"
      sha256 "a47773cdd064abf380c6acf4bd69e42b352c8f84a64c84cccf8f56e1b34f9f0a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.123.3/eca-native-static-linux-amd64.zip"
      sha256 "a841c22ac0d0c5d41f44f08a8bd4b782b77923d348d0a806739d4e3c6be8d7ba"
    end
  end

  def install
    bin.install "eca"
  end
end

