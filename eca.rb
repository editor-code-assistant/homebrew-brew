class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.94.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.94.2/eca-native-macos-aarch64.zip"
      sha256 "d7a64f91ffd8195e33bdc99f684a060f525c51db63e991ec46b4fdff939898a1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.94.2/eca-native-macos-amd64.zip"
      sha256 "d3ad56542fa7b446a505d8a871564093309ffdc88a436c5c882fe27f63d29f41"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.94.2/eca-native-linux-amd64.zip"
      sha256 "5f76c6976b0a7a81897a84fdf79ca1c7d6258d0398cbe19e127500f75cac6a6a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.94.2/eca-native-static-linux-amd64.zip"
      sha256 "f574f8eb4dddae9feb4a01cc20a535a99516e6a8b3e3e04263ebbeadfd711db7"
    end
  end

  def install
    bin.install "eca"
  end
end

