class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.82.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.82.0/eca-native-macos-aarch64.zip"
      sha256 "ee521e7235165f8270cfaf3145b4bd5de580b5b40339e0cbd3c3aac96edde5ca"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.82.0/eca-native-macos-amd64.zip"
      sha256 "168318f1eb783c21ceda7db7f7279218325639fbe2b2c52a1033c3e5a20baf93"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.82.0/eca-native-linux-amd64.zip"
      sha256 "4a3f277147a30be124eb749ec61b69ff1f487d4db905e9c343cf9a5739c77a03"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.82.0/eca-native-static-linux-amd64.zip"
      sha256 "8393ee663d1687841747da149c6fb3ade50be45cf0591f11e3852180a40b4784"
    end
  end

  def install
    bin.install "eca"
  end
end

