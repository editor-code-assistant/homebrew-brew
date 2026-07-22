class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.148.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.148.1/eca-native-macos-aarch64.zip"
      sha256 "ea79b459668894f1468e101a2af77fa4545a9649435bffce4f80c23729bd9c72"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.148.1/eca-native-macos-amd64.zip"
      sha256 "9cd2faf94f52f1150564e8f47fa9e84f5022cdb8ba5d4fc5620b404f9eb840f4"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.148.1/eca-native-linux-amd64.zip"
      sha256 "931eb41268c2c3e8fb4f8485ae2b490b430aa38a5700c19609c46bc8bb449bdd"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.148.1/eca-native-static-linux-amd64.zip"
      sha256 "14d651e93cb00d2491d92afde93d9cac687dccbff81932d731d05caed59ea759"
    end
  end

  def install
    bin.install "eca"
  end
end

