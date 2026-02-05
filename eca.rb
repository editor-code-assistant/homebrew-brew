class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.98.5"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.5/eca-native-macos-aarch64.zip"
      sha256 "983f541958cee441b345f6fe60d484fbb352c64be55d914569f3f04c37b72d15"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.5/eca-native-macos-amd64.zip"
      sha256 "aef7ebd2fc3329f2bbfae28c8751df1aabe8a2851f50a7ad4186f68b4c9cdcd4"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.5/eca-native-linux-amd64.zip"
      sha256 "c8e903c3e40d8f9845bf08f64ef26dcdb432dcaa863dbebb1bc59eba2a769a84"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.5/eca-native-static-linux-amd64.zip"
      sha256 "64229329c8966628977b89366ebd853ef89e9e50a46f1592dc5d04d5547a4c4d"
    end
  end

  def install
    bin.install "eca"
  end
end

