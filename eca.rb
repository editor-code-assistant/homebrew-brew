class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.140.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.140.1/eca-native-macos-aarch64.zip"
      sha256 "00c5356d9b9c4c1507fc9ab7f6826c3c082a1cf97657e828829114b710daa404"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.140.1/eca-native-macos-amd64.zip"
      sha256 "2de3f2c76435459dd651bd9b9e4926cc5ded943e831dec9f3245090fac014f89"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.140.1/eca-native-linux-amd64.zip"
      sha256 "e4749b9aa04f7f09f6182581f2e86df476b932e59af479e504554d8d0a3c6f65"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.140.1/eca-native-static-linux-amd64.zip"
      sha256 "ad834f9b476cc27c86d5a9cec04b69de09107a985a4f0e158bd01886e35a27c5"
    end
  end

  def install
    bin.install "eca"
  end
end

