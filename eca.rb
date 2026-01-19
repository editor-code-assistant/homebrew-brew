class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.93.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.93.0/eca-native-macos-aarch64.zip"
      sha256 "84094bebb2506384c668e03fb03c2bbc45ab2e845e958ae4e9b04b02622f3f18"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.93.0/eca-native-macos-amd64.zip"
      sha256 "c9c4791313c4115eddcea480996bde3b7d40d70429d1bc62bb676a2970296067"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.93.0/eca-native-linux-amd64.zip"
      sha256 "961a6de9953f09a6cf13e478102440c7117ca525b77ddcd3a3cc1cfa427cdfc1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.93.0/eca-native-static-linux-amd64.zip"
      sha256 "beeb8bbfb7746cfee678ae17e7d6de2eea2160749bd3dc775cb5839516c825ed"
    end
  end

  def install
    bin.install "eca"
  end
end

