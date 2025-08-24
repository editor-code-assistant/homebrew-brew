class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.34.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.34.0/eca-native-macos-aarch64.zip"
      sha256 "2a0878eea827c76a6d6e32cd188587c9666e6269a8df263298d66c39d3d959e5"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.34.0/eca-native-macos-amd64.zip"
      sha256 "61a5272d0e95b7641a604431ef57aba466e5f4339df80264f07b82f7ac51e3b1"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.34.0/eca-native-linux-amd64.zip"
      sha256 "97a33d6bdf6d816497a3d8bba54e11a0cb74a32420c816c3617437daddc1bd76"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.34.0/eca-native-static-linux-amd64.zip"
      sha256 "95de388676f05d7d1a3863b26a69dc7ad7544c12bde8aeabb0f34885e2766b41"
    end
  end

  def install
    bin.install "eca"
  end
end

