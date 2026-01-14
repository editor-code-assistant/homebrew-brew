class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.91.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.91.2/eca-native-macos-aarch64.zip"
      sha256 "73f87d610fdeed69fd489beea196e26b4ead7f6302a67dfc61c5af4bd75a817d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.91.2/eca-native-macos-amd64.zip"
      sha256 "04c0bf318627753dce007de810296c87582ac46e198311ec38b2f96e9642180a"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.91.2/eca-native-linux-amd64.zip"
      sha256 "1169390597e765f7d791fd41aa7ef532e4d51e604159f524bfb45a474b10eed4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.91.2/eca-native-static-linux-amd64.zip"
      sha256 "24c047f2b927a4ea9ad99c457299908728d36635103eb54dc84216354c17026b"
    end
  end

  def install
    bin.install "eca"
  end
end

