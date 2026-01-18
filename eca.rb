class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.92.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.92.3/eca-native-macos-aarch64.zip"
      sha256 "4af0b53c036da0f280f2539551b857c874575c28e49f5569d9a382acd8845db7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.92.3/eca-native-macos-amd64.zip"
      sha256 "e63be4c41c9d3a033ea0c63176d17707f878b06ac022ed852e25514bb55e0a01"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.92.3/eca-native-linux-amd64.zip"
      sha256 "eb6d57cbd1aa7788d1d0089c67aba8efe6a726e95940305e7ecf64235401caec"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.92.3/eca-native-static-linux-amd64.zip"
      sha256 "664a37374c262c64b861d5ed43bc7691a0d2dbf473c9916298986be37a237a93"
    end
  end

  def install
    bin.install "eca"
  end
end

