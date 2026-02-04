class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.98.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.0/eca-native-macos-aarch64.zip"
      sha256 "7a979100b36e75b91e24b3845e32109bab29f6cf3eabdc07978935b04556b3b7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.0/eca-native-macos-amd64.zip"
      sha256 "78251598114ac71fad72bcf052ecb5be5a336641f568c6308c250d93cc31df53"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.0/eca-native-linux-amd64.zip"
      sha256 "604de8932b03e9839c5c34c2eab5f493a1a846131d354b7cd08ce6854092da1c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.0/eca-native-static-linux-amd64.zip"
      sha256 "f2e46b53ef5a9a9bab21ded10882946ce87596bf3c92d8f7c2316fbaf9507dd8"
    end
  end

  def install
    bin.install "eca"
  end
end

