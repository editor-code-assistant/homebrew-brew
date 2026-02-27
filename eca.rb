class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.108.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.108.0/eca-native-macos-aarch64.zip"
      sha256 "719a7be0a72c99d8e74a70870941f66098fc782c036e03f1950744e2ef2fe0fb"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.108.0/eca-native-macos-amd64.zip"
      sha256 "04723e7e6892af6e6c64a5ebefcb15f3349abe91e8f078843b3bc576fd91026c"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.108.0/eca-native-linux-amd64.zip"
      sha256 "5079e5b970b0e2d9c7e61a4bdab81b590eac689981ad2b372394feeb222b3a44"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.108.0/eca-native-static-linux-amd64.zip"
      sha256 "e9f2a8e17d1c21608cceb17ca99324e6083b37b4ba6251e7f642f9d58874d31b"
    end
  end

  def install
    bin.install "eca"
  end
end

