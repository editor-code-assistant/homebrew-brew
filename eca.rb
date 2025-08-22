class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.32.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.1/eca-native-macos-aarch64.zip"
      sha256 "3e87374648f3cac5fede660bc0687957a391b18ba3a30bf86ab171dbe7b2f96a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.1/eca-native-macos-amd64.zip"
      sha256 "198c7d1a6120204b0f5e3e84280c1422e5ce90c1882528458ad98fb079760b5e"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.1/eca-native-linux-amd64.zip"
      sha256 "ed69529628e8fc411715f75e29553ec85700fce3479241f67315708c30955df0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.1/eca-native-static-linux-amd64.zip"
      sha256 "53bc6eacc570157df8177269b422ce9dcf8bc23745e8741542e2fdc51ac3b51a"
    end
  end

  def install
    bin.install "eca"
  end
end

