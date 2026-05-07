class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.133.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.1/eca-native-macos-aarch64.zip"
      sha256 "0777d5106ffc80300895e5fd9d4e7f0edb4853be37ad3ebe05d641cffe88050a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.1/eca-native-macos-amd64.zip"
      sha256 "187c0a4bb97ceb46f5a087e3e07d79ec9ddaedab44df8f8a965d749df745fb0b"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.1/eca-native-linux-amd64.zip"
      sha256 "0c2e8f2b40dea60e9a66ddb3bb09734eba8eb08aa25cdefe0258889eb7dc41e1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.1/eca-native-static-linux-amd64.zip"
      sha256 "3f1c3009908ca70691c95f5671b04b3e2ef1371b9ae2eb0a34fecc7d16bfa770"
    end
  end

  def install
    bin.install "eca"
  end
end

