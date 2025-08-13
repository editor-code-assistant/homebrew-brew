class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.26.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.26.1/eca-native-macos-aarch64.zip"
      sha256 "5db80d0081dce3ad59c7d816d4ba08590098e88c947ee32b9b06d3971fd357ab"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.26.1/eca-native-macos-amd64.zip"
      sha256 "28944e94b68e29504d2c4dc646a7daf20c3b22ed95e3a002631d8aa9c48cd766"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.26.1/eca-native-linux-amd64.zip"
      sha256 "8898f112eadb3b416d363f51eecea4d6845d0cf7ede0f8f34d0165c32a9a79e2"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.26.1/eca-native-static-linux-amd64.zip"
      sha256 "ca48f8f629f2a1ecefa7b3b592368ba7969676e1e95cbf7de5e1d4b25dbd7f51"
    end
  end

  def install
    bin.install "eca"
  end
end

