class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.109.5"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.5/eca-native-macos-aarch64.zip"
      sha256 "1a13084bbc02f28412d88ba99356ea21a9e135028996a8ac779888efc1ca5a9e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.5/eca-native-macos-amd64.zip"
      sha256 "1aeef004bfcb276c4d1287bc6b1fe4dae1edec1369abf78e91a04057c15f72e6"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.5/eca-native-linux-amd64.zip"
      sha256 "eca8d5bacff1af83e0eabbab95777238cf5cd4467629526c8617773dac676fa1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.5/eca-native-static-linux-amd64.zip"
      sha256 "e7bc3627b1634240ad142ee721b430ed434f838dea2342cca504fcd7a079bacb"
    end
  end

  def install
    bin.install "eca"
  end
end

