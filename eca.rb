class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.164.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.164.0/eca-native-macos-aarch64.zip"
      sha256 "cd0bd6f908f0d8b652aed639ce3ca6e6633c53e53ab16747042cc5b2ed2fb421"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.164.0/eca-native-macos-amd64.zip"
      sha256 "2375e1a2cad83e4574b9e3db70f6f37189138215ca489770b2789c0f51482755"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.164.0/eca-native-linux-amd64.zip"
      sha256 "576f3f942855526c979a730afe994598c9e718fe68f0b4c61afa987a427c0e67"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.164.0/eca-native-static-linux-amd64.zip"
      sha256 "4db2a0e6fdbb47fdc23d95d5734c8c02fe3b79326ab7b0556969c54acd7b6c59"
    end
  end

  def install
    bin.install "eca"
  end
end

