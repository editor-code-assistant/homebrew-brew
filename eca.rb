class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.85.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.85.0/eca-native-macos-aarch64.zip"
      sha256 "001202b9758dabe4b446e9cc3bc64137a4229cf0aa45942b1951bcc9ab5341b7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.85.0/eca-native-macos-amd64.zip"
      sha256 "cc720211aaffa32fda11ae82178316b16c3509c5861bb73f080d61d939b8d3e2"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.85.0/eca-native-linux-amd64.zip"
      sha256 "919d364670d2bb6b7b34451e2bff8cb2a0f7dbd08c0bd8213f2612e33be6f951"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.85.0/eca-native-static-linux-amd64.zip"
      sha256 "c4413ccf551bd7c49c45399ca7c67a3d32bf1ffb399d8e7e8a60434ed49d0fce"
    end
  end

  def install
    bin.install "eca"
  end
end

