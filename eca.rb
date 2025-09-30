class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.62.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.62.1/eca-native-macos-aarch64.zip"
      sha256 "d888566acb525d97b92a546c2ea43266e695077bacadb0333c9a8872e3b4b702"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.62.1/eca-native-macos-amd64.zip"
      sha256 "9b02ff5d4ed2f7f79bcd694cafe25e857497404eb48131d2f98832d0ab5f736d"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.62.1/eca-native-linux-amd64.zip"
      sha256 "6933a04a8c6ce55a379e19a0068cd86e2540a938568f748b3a3c5f52f1014f1c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.62.1/eca-native-static-linux-amd64.zip"
      sha256 "b40a08c10cd2c143c6ba7b07ab595e6c04e4f8e1d0d7506aa4baaa8fbf05f4d6"
    end
  end

  def install
    bin.install "eca"
  end
end

