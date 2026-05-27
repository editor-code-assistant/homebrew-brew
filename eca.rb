class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.135.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.3/eca-native-macos-aarch64.zip"
      sha256 "a45327ae132fe0fe6cde1aa78d5ef48f3622a0b5085f0af9735d5333fdde418d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.3/eca-native-macos-amd64.zip"
      sha256 "e13043bf431f52f71d3c445d5ed4f383f7e23b0660b6a9e9a6a40bbd2b3b41c6"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.3/eca-native-linux-amd64.zip"
      sha256 "ab9934fcd674e52d3939fcbcf2a4b6495e6a9f76c422e1113b406a72df07880e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.3/eca-native-static-linux-amd64.zip"
      sha256 "735ccbeecb201f8eca0d545c3bbd2dd65b32f708dcad452504ab08711a0b16dc"
    end
  end

  def install
    bin.install "eca"
  end
end

