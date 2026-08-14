class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.154.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.154.0/eca-native-macos-aarch64.zip"
      sha256 "0d712fa52262e45aa78315eec6f1db0b6677831f6e2d784568d24b9af6d04185"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.154.0/eca-native-macos-amd64.zip"
      sha256 "1db4f05eff3b28a9d93c656aa2cdd18327b245fb2fd4e0b11ef928a67ab715e2"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.154.0/eca-native-linux-amd64.zip"
      sha256 "c3f0e533b5e3b67607281892f3b7eff49c5b982f70b45d323e84db5c22b9c84e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.154.0/eca-native-static-linux-amd64.zip"
      sha256 "055cd965bf60ec1ef5f7ec0cd9db5e35d325e088aa26acbb60b8e10e8bd3022b"
    end
  end

  def install
    bin.install "eca"
  end
end

