class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.135.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.0/eca-native-macos-aarch64.zip"
      sha256 "4a034c1ddb7d45b86065441c7c1cfdf6d31daa211a130246fde64169eb9f2b68"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.0/eca-native-macos-amd64.zip"
      sha256 "52f30409036e19ef8fecf96b4a5d991d69def931afd4766a25da804960665f96"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.0/eca-native-linux-amd64.zip"
      sha256 "51add74317aa2937fea3fbe1f41895ff2f78b5e7ec5b215b5c5ef2a18d4b9312"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.0/eca-native-static-linux-amd64.zip"
      sha256 "2586f4ae7737f95b221b61aab26d918e35fbcdbe2fc37b40bc1649c8da6be849"
    end
  end

  def install
    bin.install "eca"
  end
end

