class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.84.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.84.1/eca-native-macos-aarch64.zip"
      sha256 "6bb3f09d3b66de280bca8d4e8367a7fc046bc19797ed1b0ff2262d07bf9af032"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.84.1/eca-native-macos-amd64.zip"
      sha256 "9b4bb2b8172612179b5e7ed7232ad371aabac4cd90b837954c01edc8294158c6"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.84.1/eca-native-linux-amd64.zip"
      sha256 "b8d368aadbfe585320c9495a3d0d4fd55e70209423ad961c2eb5fa32e0988215"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.84.1/eca-native-static-linux-amd64.zip"
      sha256 "75416dc8a5d384ed8618794250e2cd9869d819e3bd00533dd9d789bd217a3658"
    end
  end

  def install
    bin.install "eca"
  end
end

