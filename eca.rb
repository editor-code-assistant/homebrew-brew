class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.170.6"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.170.6/eca-native-macos-aarch64.zip"
      sha256 "34d569541998cdcf21edabcd1706e36a49dd638983f3ad53d32023e14c262d1a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.170.6/eca-native-macos-amd64.zip"
      sha256 "bac268d18964056ccf3fe6fe1315439abac0082d20209322f478ef1fa5ddb608"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.170.6/eca-native-linux-amd64.zip"
      sha256 "09a7112da7c9c56ddb35f52d1a6523f9a7c43cace071365d77647ba12a0d501a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.170.6/eca-native-static-linux-amd64.zip"
      sha256 "28700b94a2b8671f06a0a296b2a4826ec5b1d14d7e4bbf4d4b71c6052db647f6"
    end
  end

  def install
    bin.install "eca"
  end
end

