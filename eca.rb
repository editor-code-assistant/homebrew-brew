class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.120.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.120.0/eca-native-macos-aarch64.zip"
      sha256 "38abc4253f9e8f78e9cd4390d4a9fc9feb3c17ec70b180663232e58b66ef0456"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.120.0/eca-native-macos-amd64.zip"
      sha256 "d3daa9b9de386459997d73b24a837620e1be5d9297e5bb1d3b144de136a976a6"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.120.0/eca-native-linux-amd64.zip"
      sha256 "e449cb9fa6a34fbb80ece20f0eb181db355c1fe644d48afa2d75c3fcff4e0718"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.120.0/eca-native-static-linux-amd64.zip"
      sha256 "9d9415dcfe453746d891c920dcda29bd6f07ee841f7a7a0ab852f9d4512b6bed"
    end
  end

  def install
    bin.install "eca"
  end
end

