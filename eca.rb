class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.55.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.55.0/eca-native-macos-aarch64.zip"
      sha256 "cbca543651d6d6607fe71b01d3bcde6c39b88d522b05db77d1d32015a9d3818f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.55.0/eca-native-macos-amd64.zip"
      sha256 "f1f0f59d9086175530f44b927224fe420ee173dadcf2f964722bdcf9de870fad"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.55.0/eca-native-linux-amd64.zip"
      sha256 "c759a856bf044211f42fe8d073b084d81cba3d78dca1b43c215678016b4eca6f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.55.0/eca-native-static-linux-amd64.zip"
      sha256 "77006005e4ca15453fa500a700bb62a31fb4208e6f741b22e52ceeac78e20e40"
    end
  end

  def install
    bin.install "eca"
  end
end

