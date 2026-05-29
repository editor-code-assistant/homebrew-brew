class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.136.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.1/eca-native-macos-aarch64.zip"
      sha256 "fbe110b6502361f4b4a30820f6a0f20aa936affc1359c0326c282c26d06d4ec5"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.1/eca-native-macos-amd64.zip"
      sha256 "0dbbedf207b48f4b1047aae4f8f8ff424f9d6270a49e244e801702bd2cd3ad58"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.1/eca-native-linux-amd64.zip"
      sha256 "1e7632272a210b115698ee654ec771e585bc9d4dd2f7bfd6a4c39f1c40f9301c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.1/eca-native-static-linux-amd64.zip"
      sha256 "7db847047074aa127196a18e7b89e9d6486e6487c71740cd8ef79a33e42467bd"
    end
  end

  def install
    bin.install "eca"
  end
end

