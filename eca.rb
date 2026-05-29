class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.136.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.2/eca-native-macos-aarch64.zip"
      sha256 "4e3f5e974d224109f7986228ff613d2feec1277b943c3259f402d7a875478ba2"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.2/eca-native-macos-amd64.zip"
      sha256 "128d4bc92ce4c4b3f5e90412429a49b5f2ca14d0e1746d696b0716492b42b08e"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.2/eca-native-linux-amd64.zip"
      sha256 "75e06166076e9a496842b87992d34f45fa8931c188371e912073180770f9a111"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.2/eca-native-static-linux-amd64.zip"
      sha256 "863b71c1b5ec97a77f0c33db99307401f623d5f05fbaa97ff29b7c2f3c860fdf"
    end
  end

  def install
    bin.install "eca"
  end
end

