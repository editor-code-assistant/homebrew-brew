class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.161.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.161.1/eca-native-macos-aarch64.zip"
      sha256 "b8c8883041f5a10eb990a053ef639361874cae1224f0ffa2ef4423fa04437c20"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.161.1/eca-native-macos-amd64.zip"
      sha256 "d9e4985733c523a0041340a53d134e4983a3a26e95a4fbef0287f9cd40d994c3"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.161.1/eca-native-linux-amd64.zip"
      sha256 "a1455cba38df676a2c3408a53f0e67402579c63e00ad793d70c6e81e11bd13d9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.161.1/eca-native-static-linux-amd64.zip"
      sha256 "dbb553264a39f9690ceb3a36f8a3b3ad173688f52bc54f29ca58bbca1565d84d"
    end
  end

  def install
    bin.install "eca"
  end
end

