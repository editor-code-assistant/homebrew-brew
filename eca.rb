class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.37.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.37.0/eca-native-macos-aarch64.zip"
      sha256 "6d5d10101c19137f536f5f9958c5c8502819870caace507865f69b7227a33865"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.37.0/eca-native-macos-amd64.zip"
      sha256 "96330474918a38e6e8cee8f3de5bafc7abdd3553a356648de1bca3435a3c1d7d"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.37.0/eca-native-linux-amd64.zip"
      sha256 "a067b6bfcb12a70a0bd72a4436286bbad38772898b0b65a464369c279600c697"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.37.0/eca-native-static-linux-amd64.zip"
      sha256 "0569b92b12ff3a608b95e4ba9563f937b4ef0fffb7e2d5f3004697d60f31f1e4"
    end
  end

  def install
    bin.install "eca"
  end
end

