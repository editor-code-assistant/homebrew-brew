class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.141.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.141.1/eca-native-macos-aarch64.zip"
      sha256 "6cab74bf14d7887a0f74692890ea398e707f17df548b073a6088ad06acfc21b2"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.141.1/eca-native-macos-amd64.zip"
      sha256 "61c166cacc38e59d2e3d2b583aaeac2bf3dd8e865ac2ed0e513096c4ed3d43fc"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.141.1/eca-native-linux-amd64.zip"
      sha256 "4e9bea225c1f390b1f60f450ae5a8142bc3004fefeedfddf915096df8d716ff1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.141.1/eca-native-static-linux-amd64.zip"
      sha256 "944e8b57b750382d8441d5aa3a4861c2e5b5630d0e483f2a7ac4b82d39468313"
    end
  end

  def install
    bin.install "eca"
  end
end

