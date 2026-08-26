class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.157.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.157.1/eca-native-macos-aarch64.zip"
      sha256 "e8cdd449d7d975109e0b0d4f2e11273021b00a118cf4c57487b4834672985bd3"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.157.1/eca-native-macos-amd64.zip"
      sha256 "451966b8f35bafd2413faa84d4cdc7ec69637d6e3440e3cb6992af5777a8891a"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.157.1/eca-native-linux-amd64.zip"
      sha256 "7bc2f5804ea97c258e6ce69bd7245d1150584f2efcb0abd2ee2fee678f502363"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.157.1/eca-native-static-linux-amd64.zip"
      sha256 "4298a3f2f57b64ceaf6ff991e9dea0ce8c5044c645f4bef80943dd736e4053f2"
    end
  end

  def install
    bin.install "eca"
  end
end

