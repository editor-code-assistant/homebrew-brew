class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.85.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.85.2/eca-native-macos-aarch64.zip"
      sha256 "d3432d2cb8136fc18d44d48ceb49ade31056c8520c9360095b68dbf6791e15eb"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.85.2/eca-native-macos-amd64.zip"
      sha256 "5a9fb6cc6631d5ad61df964d2430514854d674a4b3c375b13cad426d1f11e87a"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.85.2/eca-native-linux-amd64.zip"
      sha256 "ab468947cffe657cbef98d2ae310ced5ef47b65e6d33719efd05a2eb7df0c31b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.85.2/eca-native-static-linux-amd64.zip"
      sha256 "0e4a18779c2a201c8db7c2a44b513888b26ec735b932fd238bd883f0a9670e9f"
    end
  end

  def install
    bin.install "eca"
  end
end

