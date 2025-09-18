class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.56.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.0/eca-native-macos-aarch64.zip"
      sha256 "e1c6c218f9d679cd99f12edef6b4b9dbe3afb28786562b1262a2c3b868674b50"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.0/eca-native-macos-amd64.zip"
      sha256 "33df20758e2e5055833417b21574f259be3ae33be764ed50d586c3e47eab8d71"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.0/eca-native-linux-amd64.zip"
      sha256 "66d3ada91ac1dec0cd5731af1853355f61ca30c4b5b00509177fb85ef0dcbe08"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.0/eca-native-static-linux-amd64.zip"
      sha256 "c60b4bb634980f859642413c2a109c297b1eb827b67764427a99d3ef1ffde84a"
    end
  end

  def install
    bin.install "eca"
  end
end

