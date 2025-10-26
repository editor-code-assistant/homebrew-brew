class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.73.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.3/eca-native-macos-aarch64.zip"
      sha256 "38d7b726ede061493898458debce56ec5600b38e578d25d157f5fd3214f293d1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.3/eca-native-macos-amd64.zip"
      sha256 "fe2a6a9a7b501d868a75395213420b1e037573f2320285c91e0c1609656a50d9"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.3/eca-native-linux-amd64.zip"
      sha256 "4cfe1fbdb889761cb2069b6c278015145524f2038772f6e8591112689422daa1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.3/eca-native-static-linux-amd64.zip"
      sha256 "05ae2c81beabd7826c9f2b08dabb2a178acf3a54e2c96e36a841ba44a6c36f05"
    end
  end

  def install
    bin.install "eca"
  end
end

