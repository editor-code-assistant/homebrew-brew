class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.81.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.81.0/eca-native-macos-aarch64.zip"
      sha256 "45b5b01ba138ff4071849ee99bd6a73ba8d96ea1d5bc025dac44d772bdee67e5"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.81.0/eca-native-macos-amd64.zip"
      sha256 "d82d672c2d6692405d36b7c402d9a3feeb44a2309e3e06f2e6b6820c243ebb4c"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.81.0/eca-native-linux-amd64.zip"
      sha256 "dfaf5b7c7401ae3ccbee1c2325c16eb15ac42826ea2f5034b24c2d0acfcafb39"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.81.0/eca-native-static-linux-amd64.zip"
      sha256 "7538f6fabd3f0f017552f90951c1df90baeab4534fd84cee090a8ccf62706995"
    end
  end

  def install
    bin.install "eca"
  end
end

