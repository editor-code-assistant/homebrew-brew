class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.171.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.171.1/eca-native-macos-aarch64.zip"
      sha256 "fd6c7fae0f3c267452799572acbd443ad474d2e874919e08fd62eb106dbce0cd"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.171.1/eca-native-macos-amd64.zip"
      sha256 "e7b84a31af9d7ad949b4cf4cf3bccdc94eed5f4ccaed716013724d0377b3888e"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.171.1/eca-native-linux-amd64.zip"
      sha256 "d953bb4126794fcb46c77d35fa5f0d2564d3e243c1014a26e5a32423cfc88042"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.171.1/eca-native-static-linux-amd64.zip"
      sha256 "3a897cb46bc13d5cab16d43542ecc13035bb77a703e084435c2c650c7c501cfd"
    end
  end

  def install
    bin.install "eca"
  end
end

