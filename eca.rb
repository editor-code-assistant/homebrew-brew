class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.63.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.63.1/eca-native-macos-aarch64.zip"
      sha256 "6b8dde1fbd25d30ba52a09757ede083e6eb4ea3a3aee4d02e6a6284e26c08205"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.63.1/eca-native-macos-amd64.zip"
      sha256 "6604807408047c9572cfaf6b995788a1b0bb6307c21953778cfbe7754c36962e"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.63.1/eca-native-linux-amd64.zip"
      sha256 "cf8bbe956e708293fe105883d084e50913a96ec747508d26909af0b18dd13b2b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.63.1/eca-native-static-linux-amd64.zip"
      sha256 "74d35fc3d3f365a7b5878f068ee1ed11c17b887d718f94723b7d18ad617a5eea"
    end
  end

  def install
    bin.install "eca"
  end
end

