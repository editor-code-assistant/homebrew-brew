class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.134.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.2/eca-native-macos-aarch64.zip"
      sha256 "9921109c5e64630300b349159abe06a1a1723b3de7e3c0c6cbce4cee60884c44"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.2/eca-native-macos-amd64.zip"
      sha256 "414b67a6fe7a3e0a5cecdc7308638ce6d2cbc90296a5e05daa4f573179d6fbb0"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.2/eca-native-linux-amd64.zip"
      sha256 "e6f300ba7207380b83d2c525c170c860d3b4ea73e889295ad774a1c463c069c0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.2/eca-native-static-linux-amd64.zip"
      sha256 "0b02fa674ff1f4b51bcd6abd9332f2af19c206739d440a8ffd454fd96b07960d"
    end
  end

  def install
    bin.install "eca"
  end
end

