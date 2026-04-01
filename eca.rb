class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.123.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.123.0/eca-native-macos-aarch64.zip"
      sha256 "29b9003768d8504ff58aea86030356c7e8bd7e445442a52ce5c2f76e0d1a6e77"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.123.0/eca-native-macos-amd64.zip"
      sha256 "92a64f40eb6a51255da5a0398fbd03611ddf41b2e239363f5f1669c4dd90723b"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.123.0/eca-native-linux-amd64.zip"
      sha256 "4f46c90d952613932324fa1cbc8c53bbaab4ce642e18558c954806df984c5cc8"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.123.0/eca-native-static-linux-amd64.zip"
      sha256 "cfe768d29ba5baba496333ca765f64deaaf8fac791ebe2777e80e3cd29668c61"
    end
  end

  def install
    bin.install "eca"
  end
end

