class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.52.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.52.0/eca-native-macos-aarch64.zip"
      sha256 "ceec51b08d00c3e171fc6e33995cc39e2b65424d1f9cbbd8f1b7b48be6525060"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.52.0/eca-native-macos-amd64.zip"
      sha256 "a67e53169d39803017ebe4ea595ec28b88ba2d16c11b2497cc41af8e767ae985"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.52.0/eca-native-linux-amd64.zip"
      sha256 "3a28595b02e06ad6b6f558b406295d8881a269145d6f58b150d5ebde19e10852"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.52.0/eca-native-static-linux-amd64.zip"
      sha256 "27890bead0794ea1ce11357c48bf2e071949de976051537497b4b4cb4b89eb30"
    end
  end

  def install
    bin.install "eca"
  end
end

