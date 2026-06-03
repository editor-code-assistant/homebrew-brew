class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.138.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.138.1/eca-native-macos-aarch64.zip"
      sha256 "3992de07d4970c55215b871f6c88d4be2fdabe77bfeeff04ee192e0a3524737b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.138.1/eca-native-macos-amd64.zip"
      sha256 "ee032145e5006b9d3777551fcb62a6eefd79458cccda57142c6c5ebca48811b1"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.138.1/eca-native-linux-amd64.zip"
      sha256 "bee597c990ca2099b3d9cedbe55afcc6fb4726e99776a4bdf3acbc8463d1d670"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.138.1/eca-native-static-linux-amd64.zip"
      sha256 "0cec31d305109d7eee5726e8607a723974190f474f3c6fcab4ba2f94d888e901"
    end
  end

  def install
    bin.install "eca"
  end
end

