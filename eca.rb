class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.115.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.1/eca-native-macos-aarch64.zip"
      sha256 "080615136c6c3b42b246c1a8dfdf136a0c389d2a8447403aca41bc88737f3832"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.1/eca-native-macos-amd64.zip"
      sha256 "21a6d88688ec65b8812df44f40c9fd5a75b589b538d9de394ead20811c3298d5"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.1/eca-native-linux-amd64.zip"
      sha256 "83b53cec416829e813ff30756a8510002bba748ab965df111ed9b8fbaee91297"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.1/eca-native-static-linux-amd64.zip"
      sha256 "c5910bac1fcda572a8d3497ca33eed477a77b7145880bf07a801b9162bc7ddd3"
    end
  end

  def install
    bin.install "eca"
  end
end

