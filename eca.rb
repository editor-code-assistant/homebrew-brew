class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.98.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.2/eca-native-macos-aarch64.zip"
      sha256 "5744a246755fc9245349d44aa82fa2741e10b9c07af9f53634bb8f5223d8a825"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.2/eca-native-macos-amd64.zip"
      sha256 "d941523f9529e4bff40f5a05a65bbb99a0eaae92e463cb9d5eb636bb7ae69565"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.2/eca-native-linux-amd64.zip"
      sha256 "79cfdf4537eb5dcd8a6cc27ecb1c10f2d0daffcfad6f9a2e483f44c3b8d8c303"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.2/eca-native-static-linux-amd64.zip"
      sha256 "3c78b1ad14178c553fc4cf2897de15e06da2ecd8d6f7c7b6b5823b741e552c5e"
    end
  end

  def install
    bin.install "eca"
  end
end

