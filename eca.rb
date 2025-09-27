class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.61.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.61.0/eca-native-macos-aarch64.zip"
      sha256 "807f3a3c2ff0bce411223c7a59480af129deef7087e3988742865e7aa9df32e9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.61.0/eca-native-macos-amd64.zip"
      sha256 "d45304bb5b381f1344dcb2e793103ce149d12a102f69acc3f1061e8fe7c43617"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.61.0/eca-native-linux-amd64.zip"
      sha256 "45d0f8ebb2377cf2d4e885c0810a37483ef0435b13b440ab1c8f2425cd573230"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.61.0/eca-native-static-linux-amd64.zip"
      sha256 "25026c8f08e6ffc834b08843a78bb755c776a7f785a3debd67015f88d7402fa9"
    end
  end

  def install
    bin.install "eca"
  end
end

