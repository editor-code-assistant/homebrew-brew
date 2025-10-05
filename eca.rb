class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.64.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.64.1/eca-native-macos-aarch64.zip"
      sha256 "494716afc8e7762f3d9392a04b0fc99683f033deef8a064e9930be575f6d22cf"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.64.1/eca-native-macos-amd64.zip"
      sha256 "58983e9f4b39126c59315ae4f1508381172863981c94816763aa8d0f50862bef"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.64.1/eca-native-linux-amd64.zip"
      sha256 "16e81a684d142fdd643fde888c418bc471a595e85687b614e90cdcc4da1966f9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.64.1/eca-native-static-linux-amd64.zip"
      sha256 "fdccf57e4856821f163f51e7dd67dadef70d86e676ee6e9303047e08c8583517"
    end
  end

  def install
    bin.install "eca"
  end
end

