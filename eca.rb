class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.75.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.4/eca-native-macos-aarch64.zip"
      sha256 "01a1416330fa58199f0eb3d8e020a7e808f3d7c53e81b61b7ebbd13bb0a140d0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.4/eca-native-macos-amd64.zip"
      sha256 "85a278ef7862eb2ec75e80e464c834f34c219703eabf42114081caba77b86252"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.4/eca-native-linux-amd64.zip"
      sha256 "3b5a8ea71c3f5f85b170f9cbce1eb818f5eb7fd1a462f9e4024d629cac06bb09"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.4/eca-native-static-linux-amd64.zip"
      sha256 "f5383c7b00de90f0e67335e5fb17b38b3f39f3cdd99884c8b8814659beed6d32"
    end
  end

  def install
    bin.install "eca"
  end
end

