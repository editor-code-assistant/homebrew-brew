class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.61.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.61.1/eca-native-macos-aarch64.zip"
      sha256 "a79ba0d494273243656294003a078a4c21682a9942cc7410624493532e2b7304"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.61.1/eca-native-macos-amd64.zip"
      sha256 "defab0f9085404c8f15c1cfffd64a62356c9faf03d486f6023e06d713938c26d"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.61.1/eca-native-linux-amd64.zip"
      sha256 "0a72e9ef38b3e80f9d586071d3f12d59ed348d7f00307333fb13d4ac12f16f31"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.61.1/eca-native-static-linux-amd64.zip"
      sha256 "5c7531147de5db6849f2b6c2d80397682fb318fce6f2d5249a76a1f31f190ef3"
    end
  end

  def install
    bin.install "eca"
  end
end

