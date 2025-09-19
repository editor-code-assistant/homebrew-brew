class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.56.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.2/eca-native-macos-aarch64.zip"
      sha256 "77b8387ef87be6ddeeddc4726ad569891c0a750d53829ab8ac60f845d81278e6"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.2/eca-native-macos-amd64.zip"
      sha256 "bc645b3998e43d1d1b48c62d93f9587ff6a34d01df7ebdb04f21ff67a14307d7"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.2/eca-native-linux-amd64.zip"
      sha256 "d28a518e694b7cc203a0378919fde7f94d9dc122aae6ab0b0b40c70a31dfab8f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.2/eca-native-static-linux-amd64.zip"
      sha256 "33b010f2be083b8fbc318882d5a8c671373a8592336e41fa46480081f0c4c494"
    end
  end

  def install
    bin.install "eca"
  end
end

