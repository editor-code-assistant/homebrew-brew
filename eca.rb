class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.157.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.157.2/eca-native-macos-aarch64.zip"
      sha256 "9894f589f6d2ab19e4a6458c98da5d933e052df11077f061f5fa2f7c644b8f8f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.157.2/eca-native-macos-amd64.zip"
      sha256 "87d3ce8aead1b1ac1807c63d660c335779d8ce5a211e67637e8f7368bd9fdd32"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.157.2/eca-native-linux-amd64.zip"
      sha256 "a9931060bade460f8b11b84cc0b3fa7341148d7bc4dc09aa812fe023922d7c1b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.157.2/eca-native-static-linux-amd64.zip"
      sha256 "1f8ed3e266e8e95551e106e4eb0f0480ea42851201d000ed5fe7dc4a848e12f7"
    end
  end

  def install
    bin.install "eca"
  end
end

