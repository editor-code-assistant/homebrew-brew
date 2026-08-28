class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.157.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.157.3/eca-native-macos-aarch64.zip"
      sha256 "1c92c88934828143b2cdd65b642fd214b9903d4d03264d33bc204deee0683dde"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.157.3/eca-native-macos-amd64.zip"
      sha256 "3f3c5b93f72389cbd00a8ab162412e194d8615b9633633c69a25c407a1476bc8"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.157.3/eca-native-linux-amd64.zip"
      sha256 "3edf09d66a36d10d3688f6aaf12c8f682c6166a21c77cc03cee4a0241777f271"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.157.3/eca-native-static-linux-amd64.zip"
      sha256 "0b44bf73ba063797fadb2f041c065c91cdde61ce06a179f267cba9c388e9c95c"
    end
  end

  def install
    bin.install "eca"
  end
end

