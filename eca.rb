class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.160.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.160.3/eca-native-macos-aarch64.zip"
      sha256 "e96ec022ab7e416760ba431fe5172c291b9f7b4b9c7c6e4c3db34f7f8f8ae0cb"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.160.3/eca-native-macos-amd64.zip"
      sha256 "26d965e274c2f30eb31144477de94866543bd7ff66e95baaf3db92a0bd0c6305"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.160.3/eca-native-linux-amd64.zip"
      sha256 "97e55a40a244e975790420ec76e9b1c096a59408807201b3a495ce08beb63199"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.160.3/eca-native-static-linux-amd64.zip"
      sha256 "d7f3bb7e50ccc5a9f118e1d641985d3e1e882e1a74414cebeae38c596b4f2817"
    end
  end

  def install
    bin.install "eca"
  end
end

