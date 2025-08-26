class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.36.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.1/eca-native-macos-aarch64.zip"
      sha256 "7b78b599d0eb2fd2a3202f4a467d604a5aefc11a57d52ee99568fc1286cec124"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.1/eca-native-macos-amd64.zip"
      sha256 "593a7e1d765b62a42b2ccf54d5f9fa252ecbe549ebc284c8e31bde82a960df58"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.1/eca-native-linux-amd64.zip"
      sha256 "094064c6b93184dccaae47907d76ad52335ae0115ec1a4df0785e0877ccdc3b3"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.1/eca-native-static-linux-amd64.zip"
      sha256 "491bb3e0be773a5a9a3472fad6d6418930fef618f1eef70c24e50b2d9d0b81b5"
    end
  end

  def install
    bin.install "eca"
  end
end

