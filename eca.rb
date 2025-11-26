class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.82.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.82.1/eca-native-macos-aarch64.zip"
      sha256 "849e06704f536958cee01ae5f59ce7bab4b8001b9a9ef9ac0b7d3fbe3b6de372"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.82.1/eca-native-macos-amd64.zip"
      sha256 "43a89df24f7264bd5fe1024411bf9e69c359c9f4241ef01d604597291fa10515"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.82.1/eca-native-linux-amd64.zip"
      sha256 "b935c31dbf8ab5c02e6feb5c011e1ba3fa734f3889338185cd4bdfb72ce90840"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.82.1/eca-native-static-linux-amd64.zip"
      sha256 "84bfd65eb903183226c3748fe5c4e25d246892bbc75bc6a07be9fa174dfeab8b"
    end
  end

  def install
    bin.install "eca"
  end
end

