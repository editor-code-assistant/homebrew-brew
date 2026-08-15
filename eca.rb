class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.154.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.154.1/eca-native-macos-aarch64.zip"
      sha256 "7696f53d11a266bfe096cbf6974f72c73bfc1cd52343d3ae3492f5c82fe92f8a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.154.1/eca-native-macos-amd64.zip"
      sha256 "568b9ec66068e86e387e38af33188332ed24c6562e7648deef5d7b42d3c757ca"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.154.1/eca-native-linux-amd64.zip"
      sha256 "eb86b38a3cbd94618f8655702d56c72dda79aa72d0795d75eb374e0393504ae8"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.154.1/eca-native-static-linux-amd64.zip"
      sha256 "5e26958c6bcb204ba32ef42eaa533dfa9975a64f4459b92e0b5b7e5fcb6e14f3"
    end
  end

  def install
    bin.install "eca"
  end
end

