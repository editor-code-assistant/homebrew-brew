class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.167.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.167.0/eca-native-macos-aarch64.zip"
      sha256 "062e07d6370df78b71dae5c37b9d16da3e93531d5c3d959b7914618cf7ddfab7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.167.0/eca-native-macos-amd64.zip"
      sha256 "dac3adafab86778421f23ac1a8e67e679994eb73d405c6cc847cbb7b37b4d059"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.167.0/eca-native-linux-amd64.zip"
      sha256 "e35d576c48c7bfed9c05550831889211295547d66481c67a334aca0264948f4c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.167.0/eca-native-static-linux-amd64.zip"
      sha256 "156a75b0f0ae41a260b16cd4a80be8b8cc2ca8b3c1b13a66090316de70b70c41"
    end
  end

  def install
    bin.install "eca"
  end
end

