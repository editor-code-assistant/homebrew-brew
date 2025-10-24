class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.72.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.72.1/eca-native-macos-aarch64.zip"
      sha256 "66a8d870da03c17aa052b31ce6f0288fa3a1da5d0a353d5419d33d00d9d9c85b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.72.1/eca-native-macos-amd64.zip"
      sha256 "b289f8f7683f656769be0f554c11ce5773c2ed0ed1ba8475e340ddb947ac8bc1"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.72.1/eca-native-linux-amd64.zip"
      sha256 "e8f9f52c83c7fb48ea9ae9814389d64b529add1b12df03980ee22a4803fc06dc"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.72.1/eca-native-static-linux-amd64.zip"
      sha256 "d8498a1667540b0a78208ffe0d7a4d3b41aa41b5ef2a2a53ba69a51bcab7854f"
    end
  end

  def install
    bin.install "eca"
  end
end

