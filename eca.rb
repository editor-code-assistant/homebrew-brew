class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.123.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.123.2/eca-native-macos-aarch64.zip"
      sha256 "d324f0abdcfecda00c60446c62a14806f92b210a78ace8ab53c52b3b79c3215c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.123.2/eca-native-macos-amd64.zip"
      sha256 "5bb394a1ba725e677dd6cf1c2a67ee30c4c1830d709fb9ddf7154eea17bc3f43"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.123.2/eca-native-linux-amd64.zip"
      sha256 "3aa50db8f83671b68bf5d233cb7860e594c972bb4c519013d62481aac4bc97db"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.123.2/eca-native-static-linux-amd64.zip"
      sha256 "b214d8f41bcd6d394ee9e2b6fd9ea8cb99074fc681f83a9b521cae97d445874f"
    end
  end

  def install
    bin.install "eca"
  end
end

