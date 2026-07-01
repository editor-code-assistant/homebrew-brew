class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.144.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.144.0/eca-native-macos-aarch64.zip"
      sha256 "e65325fcb41c2019a87f5839fa568e48547f8c3c4459a7763df848b91a1dfa19"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.144.0/eca-native-macos-amd64.zip"
      sha256 "39dd1f5394bb9904bcdf8be55c0f6c978e7ecfa10a54f59c144c583fa7ae8cf7"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.144.0/eca-native-linux-amd64.zip"
      sha256 "628a5dcb3cc987d010c8adec5158e3b51b904e487ac0ec107bf0d3ed867baa38"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.144.0/eca-native-static-linux-amd64.zip"
      sha256 "d783d443a6e3ae711afad21d957d8a8b397c7236c8b5a70f22bbf7b0d68883a8"
    end
  end

  def install
    bin.install "eca"
  end
end

