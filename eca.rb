class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.114.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.114.2/eca-native-macos-aarch64.zip"
      sha256 "7db430a5936ab00a9596e0ce63746a984516d15a3c4a29a036c20bce7de180ba"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.114.2/eca-native-macos-amd64.zip"
      sha256 "cd5f27dee654945509732211ace7e47f9793c5c39059e77cb64ab55aa5588491"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.114.2/eca-native-linux-amd64.zip"
      sha256 "f934b38daa860d24fad5a4ce6a2101222d0348263c9256638307486f38783ca1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.114.2/eca-native-static-linux-amd64.zip"
      sha256 "c3c82ff927cff9e0ee5787dc873fc5c2adc7cf9ed44bafd07ffdd9ceac5a1a09"
    end
  end

  def install
    bin.install "eca"
  end
end

