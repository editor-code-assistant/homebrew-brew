class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.71.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.71.3/eca-native-macos-aarch64.zip"
      sha256 "32ea21c1a31fb5da52decbc475385c137ce49c7559d30f14f3a2f1ed9054bf89"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.71.3/eca-native-macos-amd64.zip"
      sha256 "542aa5426813b1c5821ccde84bb07b91859231aa8ab69fc161298fe03e998ff0"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.71.3/eca-native-linux-amd64.zip"
      sha256 "82742b6bc8c12609db1a4f51e1a0dd769e4a342d85ea8b2b638d983ffb2f3a2b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.71.3/eca-native-static-linux-amd64.zip"
      sha256 "d8d1c979e2f334cdef14edc9c7623cd851c8d23a72807500e56693f810c47a02"
    end
  end

  def install
    bin.install "eca"
  end
end

