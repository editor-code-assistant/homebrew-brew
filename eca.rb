class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.59.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.59.0/eca-native-macos-aarch64.zip"
      sha256 "c971f313e1d8301ce9ce77f13e0676c6fc45c2f75901aea30b7e84ee9a071641"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.59.0/eca-native-macos-amd64.zip"
      sha256 "a3ce6f615cc833594601cd8070010d8d10d9d3071a6e50f52db3d16e04697321"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.59.0/eca-native-linux-amd64.zip"
      sha256 "502b9ce5487542166d1267e4bc52b68cd37330bac38f19ee3b7a01b1b24ca6ea"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.59.0/eca-native-static-linux-amd64.zip"
      sha256 "089a937ae25fccab05e75871e5c672802ddadff9f32dbeb807fd30062cfbfa57"
    end
  end

  def install
    bin.install "eca"
  end
end

