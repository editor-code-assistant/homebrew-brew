class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.116.6"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.6/eca-native-macos-aarch64.zip"
      sha256 "448a6b22ace26183ae4bcb05ab54324cdc92d190e72d042858724082da57b4ae"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.6/eca-native-macos-amd64.zip"
      sha256 "8cc7d7e004a64092d47df8f93b4898d016f3606fd4d440ce561d1e92f7a1a246"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.6/eca-native-linux-amd64.zip"
      sha256 "fb1d682a58868f0b4494e895d7140968078286d726165c4ded669521d96afa6d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.6/eca-native-static-linux-amd64.zip"
      sha256 "84365b28b763e903eb81dd132878afe89b542acf2011ff81b72dd9ce1170395a"
    end
  end

  def install
    bin.install "eca"
  end
end

