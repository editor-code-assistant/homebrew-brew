class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.58.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.58.2/eca-native-macos-aarch64.zip"
      sha256 "7bcb216c55c87fa52969cf7562684dc169d87035b93dd370f5127901aafc4182"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.58.2/eca-native-macos-amd64.zip"
      sha256 "bc3e6b8a29b92759574d6714e7a55a291a9897bfd85bec4a340a4c33850b829b"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.58.2/eca-native-linux-amd64.zip"
      sha256 "f48365d32b23f1763d4318f2c705653686783ac84420850cc873ab98a82323de"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.58.2/eca-native-static-linux-amd64.zip"
      sha256 "45a0ca654fe17e2a30def6574328269db24b4bdf1e64514b74739997ba879bde"
    end
  end

  def install
    bin.install "eca"
  end
end

