class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.133.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.2/eca-native-macos-aarch64.zip"
      sha256 "d803614c7ffe9779f79ace9fb09744a8937423816bccde7e6756ede4b80ef38e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.2/eca-native-macos-amd64.zip"
      sha256 "a0342d5c9914a2045fb35ce0a82239ed67f27361312befc0e2d8d855eeb9ad04"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.2/eca-native-linux-amd64.zip"
      sha256 "b5e068e78bc12aaef817c6f59ae0764c021c55717276b384c23e1043e81cceb8"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.2/eca-native-static-linux-amd64.zip"
      sha256 "1f123f5171890bab3e69ef36a4f2177e851cfa772a7339453ddab2985a77eb7e"
    end
  end

  def install
    bin.install "eca"
  end
end

