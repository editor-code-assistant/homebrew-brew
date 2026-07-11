class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.145.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.145.1/eca-native-macos-aarch64.zip"
      sha256 "4f45db39d439a378517df36cada36ec2f0296d6a1ff77993248fa654ce484dd8"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.145.1/eca-native-macos-amd64.zip"
      sha256 "63af79cb3f1a5f6702b35632f09a5143d42a1f9ad0822c6be4a97ade67fda08e"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.145.1/eca-native-linux-amd64.zip"
      sha256 "914c2eb886ae73d42a0671b21ca6c8f5d00a654c8c89ef95f4134f80eae0835f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.145.1/eca-native-static-linux-amd64.zip"
      sha256 "cb146986ee27cef967ef1813df354409d75f5e94e4cf4b11720c479e2bfcb914"
    end
  end

  def install
    bin.install "eca"
  end
end

