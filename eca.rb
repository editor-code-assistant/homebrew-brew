class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.24.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.24.2/eca-native-macos-aarch64.zip"
      sha256 "cbee89cdcba9dd6b034d91b1ed69c173b85ce69cd8f162d0176da20e0642ccb4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.24.2/eca-native-macos-amd64.zip"
      sha256 "8896ae0345820e841d3fc7118de23fc5a2bff1fed64f7fd42a83f7deda921dc4"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.24.2/eca-native-linux-amd64.zip"
      sha256 "acfad3ad5d58ffc96b967903fdc008b110bfd4fc470fede50f78cff6cd6a2623"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.24.2/eca-native-static-linux-amd64.zip"
      sha256 "4ad9c688ce3811bcd460db962e2cf249423a8a70d8feb26b3ae5ba2796e72f38"
    end
  end

  def install
    bin.install "eca"
  end
end

