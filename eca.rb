class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.94.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.94.1/eca-native-macos-aarch64.zip"
      sha256 "cfec5e90f2a6e60985baffcf80fe14945fdb19ac18d20de1bff0b22d4df803a6"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.94.1/eca-native-macos-amd64.zip"
      sha256 "ca1a1cadba333d9aec5dc42269d2123b8269e2e2d90c4e204cc6b128f7f658f5"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.94.1/eca-native-linux-amd64.zip"
      sha256 "5848c184c87586fd5d2862108de5355b12f7985cb2b4d2470649c763f2f066ac"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.94.1/eca-native-static-linux-amd64.zip"
      sha256 "b9bb572c116669b0732c7b8d17370c1251ba36ec7a4015fcddc18e1918e95b9d"
    end
  end

  def install
    bin.install "eca"
  end
end

