class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.158.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.158.1/eca-native-macos-aarch64.zip"
      sha256 "b2775888931ca2b71f3b5039648f80be5dcaa09b1fe8a11560b3db199e10eab3"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.158.1/eca-native-macos-amd64.zip"
      sha256 "f5f4504ef2eb7e2085fcc39b8d92d54dbe219b5f75d333c78d05acc88ad770a8"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.158.1/eca-native-linux-amd64.zip"
      sha256 "53ed5eeb3647ce425d5015879702ba13a7450fc72672b1833ae94d76da094efd"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.158.1/eca-native-static-linux-amd64.zip"
      sha256 "b309d76d70344e1d4fc386633634df1851461bd5fd23a0d3b738d6ce633780f6"
    end
  end

  def install
    bin.install "eca"
  end
end

