class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.65.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.65.0/eca-native-macos-aarch64.zip"
      sha256 "9f1ed2c93ae0e51c2706b4744f6d8c8c81ae6b7922f88b8adfc46193bc81c54a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.65.0/eca-native-macos-amd64.zip"
      sha256 "ccbcd8089d8b0e1c5eb4e6ff89b7b5c29c6d43bdaea9da3e5e76d382defb1b40"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.65.0/eca-native-linux-amd64.zip"
      sha256 "829a9ad5894419a6db24e609205bd25f16f7540896a8c310c9382fc363fbabcc"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.65.0/eca-native-static-linux-amd64.zip"
      sha256 "1bd4c377e84ea94d963a6f244ab5e30cac934767bbcf1daa8153d5918e9ef2cb"
    end
  end

  def install
    bin.install "eca"
  end
end

