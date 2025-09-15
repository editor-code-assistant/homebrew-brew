class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.54.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.54.0/eca-native-macos-aarch64.zip"
      sha256 "e0d5f0207f31340a4d755173392f827ad464ed350b273d29dd32443be3eb47c7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.54.0/eca-native-macos-amd64.zip"
      sha256 "0c84a649df654e628c4ed6db505ed71b91212d5c3079b300473adc6a9975a7a0"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.54.0/eca-native-linux-amd64.zip"
      sha256 "5fb001f9cd26a7d47a2c5c951f5f7cc3352438a4f9be18802dc123d4c7ef701b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.54.0/eca-native-static-linux-amd64.zip"
      sha256 "2e1efe3880bc0d2494bbb52cf83ecb701183f126a72dbdfe6e4235b2cc035f80"
    end
  end

  def install
    bin.install "eca"
  end
end

