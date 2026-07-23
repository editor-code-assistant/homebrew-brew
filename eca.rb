class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.149.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.149.0/eca-native-macos-aarch64.zip"
      sha256 "f0f327d1e14fce4f32f282b59a78927041588c34d3e5b5fedf1898bf98222eb0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.149.0/eca-native-macos-amd64.zip"
      sha256 "61e50cd312f49d0a14372cb4f2609d6305ccf97027a23655f896347b9a069d93"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.149.0/eca-native-linux-amd64.zip"
      sha256 "5d23edc70bf82c4a5a70910947431a8576191199d9aa10a1805dee4b325e6f88"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.149.0/eca-native-static-linux-amd64.zip"
      sha256 "879f6b038b608717dd0a6c8768c43802dec7a1ccfb83e4ee9863f5ded7b23bc2"
    end
  end

  def install
    bin.install "eca"
  end
end

