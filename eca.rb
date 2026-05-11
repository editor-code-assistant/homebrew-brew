class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.133.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.4/eca-native-macos-aarch64.zip"
      sha256 "f4c8bc4c14d0f844fecb510d59fd780d345964ab002e8303b428f3dc914988a1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.4/eca-native-macos-amd64.zip"
      sha256 "c93b10a5b4b76babb34fe732f12f0ff339eec5f54b2e25bbb8a9e38656cf8c38"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.4/eca-native-linux-amd64.zip"
      sha256 "1fa30c394e7bc749c71d3c7f1fba60af3355276d0d483f9b9869233ae1ac197c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.4/eca-native-static-linux-amd64.zip"
      sha256 "0826d373c70238c484f5b00aa211821a899c65c5a6b360260c3fe019c83a5fc9"
    end
  end

  def install
    bin.install "eca"
  end
end

