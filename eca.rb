class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.98.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.1/eca-native-macos-aarch64.zip"
      sha256 "6988dc6cc7612c4a2de4353e412c0ab0918dd1d52ca4dab02047c16cc1abe928"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.1/eca-native-macos-amd64.zip"
      sha256 "4a1c751166cd3050d8d5cf5f8d03d3daba7ffcaef83aef592543de2a3e656d94"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.1/eca-native-linux-amd64.zip"
      sha256 "aae0010c88660e80acb86554e2c9967a7a6baaa10d6ea11c0bb00c91ba23e833"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.1/eca-native-static-linux-amd64.zip"
      sha256 "443baed79f8f658b711dde322a8f2ebcbc81f114f95816d3830e3368c6ecdda5"
    end
  end

  def install
    bin.install "eca"
  end
end

