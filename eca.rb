class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.161.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.161.0/eca-native-macos-aarch64.zip"
      sha256 "94d95cfad31a2ddd67026eedbaded150f70df7ce7a495cb3aeab102ae20e7552"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.161.0/eca-native-macos-amd64.zip"
      sha256 "5f5ebcccdbe65f5af8e9588c46d8ef46901892e935ac8da838626043fff965e3"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.161.0/eca-native-linux-amd64.zip"
      sha256 "79f2285293489bca325c505a4d3f71a0a3b55261ccf58a062671eb4f482a7a19"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.161.0/eca-native-static-linux-amd64.zip"
      sha256 "197433efaee684493277f27a0a55d90be5a4a64b004f5cff2c97013777121947"
    end
  end

  def install
    bin.install "eca"
  end
end

