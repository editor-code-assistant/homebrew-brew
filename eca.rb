class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.134.5"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.5/eca-native-macos-aarch64.zip"
      sha256 "ebd3f54686594a385d700651deb1de4c9ae9a4485315f5b1748bb2ed9d571b9d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.5/eca-native-macos-amd64.zip"
      sha256 "62f6c0b31390f31b80e79c83d536ea9318ae6c0321d55155f161e0eb807fe2f5"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.5/eca-native-linux-amd64.zip"
      sha256 "858b7ed944b073ba3f5f5d152f270d65371b0610b49c6d94d2f13f9aaa23fc87"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.5/eca-native-static-linux-amd64.zip"
      sha256 "bcc02e454e9de9fdaf01b8e0d6f98a6b81332d45d8f400a60ce26f2b5ba331b3"
    end
  end

  def install
    bin.install "eca"
  end
end

