class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.136.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.0/eca-native-macos-aarch64.zip"
      sha256 "7cc2d9b5940c5c4cc17f4a542a2dc27094af63c437bdf8194fb668350f9b703b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.0/eca-native-macos-amd64.zip"
      sha256 "a92233e920811bdefd2bf2cd5af0301f4819c5c085c0902b466296689829f938"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.0/eca-native-linux-amd64.zip"
      sha256 "f1a1c1eac158a36b8e0f982e29149e4fec575537cd691917a6a5b7f43dc9ceb9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.0/eca-native-static-linux-amd64.zip"
      sha256 "ebf887d8b5b7d888af581adf4c40b8c1a3bb4139aec65a6607b16c947a498cc3"
    end
  end

  def install
    bin.install "eca"
  end
end

