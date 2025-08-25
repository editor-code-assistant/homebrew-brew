class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.34.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.34.2/eca-native-macos-aarch64.zip"
      sha256 "6bc5639d0fb6b7449d5935bb7f77f2fcd8269e36b247078cf9d78d62b3cbbdd7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.34.2/eca-native-macos-amd64.zip"
      sha256 "05f9fa6df35e86f68d8b6a7fa5eedebeb51056af6318943d778ba463e35de77f"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.34.2/eca-native-linux-amd64.zip"
      sha256 "9f32e303ce7d20f9081c02c274839fec2eb24bd6c5949e656af72a357c30ff1a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.34.2/eca-native-static-linux-amd64.zip"
      sha256 "b6fa14f66f39440f888d3163e6a95f2718204d006dd0f80807a118b870140df3"
    end
  end

  def install
    bin.install "eca"
  end
end

