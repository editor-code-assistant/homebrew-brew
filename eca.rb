class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.122.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.122.1/eca-native-macos-aarch64.zip"
      sha256 "9bdad25b1b7f9e6e298f17e10185127379480e942d89003665293d87bf3d91e7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.122.1/eca-native-macos-amd64.zip"
      sha256 "1eed2492c168296061e8607854590386e05d7fccfbbd4ada721d8091ef46a623"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.122.1/eca-native-linux-amd64.zip"
      sha256 "787551ad045e9b920ea2bb24adb2db823c9deaf8e0cb87e58fa0ab907e1c77a2"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.122.1/eca-native-static-linux-amd64.zip"
      sha256 "2da5680ac73b4d1c775712badfa7508c91729cc514612a3da57f6558c74c0d72"
    end
  end

  def install
    bin.install "eca"
  end
end

