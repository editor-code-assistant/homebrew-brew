class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.118.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.118.0/eca-native-macos-aarch64.zip"
      sha256 "af3b15412730feac67e8bafac66600cf0aa86381a1f13078cd1d97ab3519aa88"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.118.0/eca-native-macos-amd64.zip"
      sha256 "7d61038192e40c67ede71f14eebef38c9ab53272dad32e9ff38289316c6d5b8d"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.118.0/eca-native-linux-amd64.zip"
      sha256 "659e6651f5c7bf135ee89daf722e35066c5b2e871b77c237838ee1e8e3cfa38d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.118.0/eca-native-static-linux-amd64.zip"
      sha256 "875fb62a0be55a9e6cc2a0c2ef3cf1f638f43e7582cf8684b0b5cc7f7c3fd8e3"
    end
  end

  def install
    bin.install "eca"
  end
end

