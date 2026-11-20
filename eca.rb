class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.173.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.173.1/eca-native-macos-aarch64.zip"
      sha256 "e1862ba2a863956066939cedb9bb86fefb55612fd3cea1118a6394180c5e774c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.173.1/eca-native-macos-amd64.zip"
      sha256 "27c1ceefa4f5a437d2685038e87b8f02cdf871ee061c2f780603e2ae86e15adc"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.173.1/eca-native-linux-amd64.zip"
      sha256 "31d8e4b3dff1afeb435b4051ae25c8bb7d547912e1670e1978855191202911c8"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.173.1/eca-native-static-linux-amd64.zip"
      sha256 "9027d47fd3c732485ba3183a1b951a1e4c7e979343334abd29243820bbd5087c"
    end
  end

  def install
    bin.install "eca"
  end
end

