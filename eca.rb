class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.44.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.44.0/eca-native-macos-aarch64.zip"
      sha256 "23d16b8941718d5fc17dbecd53bd5f340ec5cff0d7012ab0b0a1305acea6bcf9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.44.0/eca-native-macos-amd64.zip"
      sha256 "139feabf9f661e46a3cd68b8edd23b1a9f97ff5e3df0ef66ee7061631c24de21"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.44.0/eca-native-linux-amd64.zip"
      sha256 "833bbc4a7d0e45fc5b94dd001e9f6b154c8228ea2f8f3e90a4eb96a2716e6733"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.44.0/eca-native-static-linux-amd64.zip"
      sha256 "c686cb727ee6345edb615c4044d714e380b56cdee1f56235880a527def6eb88d"
    end
  end

  def install
    bin.install "eca"
  end
end

