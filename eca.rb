class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.109.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.1/eca-native-macos-aarch64.zip"
      sha256 "6d087a68e06895cc1f07c2e71ccf34301e39cd381bb430706a2c3e0dfb354a3d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.1/eca-native-macos-amd64.zip"
      sha256 "1396bfcfdca477e625ed6a5c91cc1b182000bd16a381b6c8840d8a0df728e3e5"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.1/eca-native-linux-amd64.zip"
      sha256 "18545fbfb8043f4a4f03c4d3fa1d08fd6973a78e37f33d0469619e3b6ca0c043"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.1/eca-native-static-linux-amd64.zip"
      sha256 "3a932424ba3749a84953147bddef0380cd4cb6bbb0123417a50f67b9f01aaa2b"
    end
  end

  def install
    bin.install "eca"
  end
end

