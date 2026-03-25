class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.117.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.117.0/eca-native-macos-aarch64.zip"
      sha256 "d75003123f705a7ee9c55217587fe39999d4e57fa80a220189290ac1144c18b3"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.117.0/eca-native-macos-amd64.zip"
      sha256 "1ed40331454da44155e292ed2ffde3f66108acb062224e27342a4cb30b9828cf"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.117.0/eca-native-linux-amd64.zip"
      sha256 "40dddea7a374da0af6b128063d5a868b064eae0b36991674f73effba95060658"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.117.0/eca-native-static-linux-amd64.zip"
      sha256 "0cfe2d517c92aafafcd1f7fc3db1c02b3a0eef263dd5806c1573043865b4b1cb"
    end
  end

  def install
    bin.install "eca"
  end
end

