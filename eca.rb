class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.75.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.3/eca-native-macos-aarch64.zip"
      sha256 "f9e6168dd345ccb47840fed4d0d5f1ad4b84b8a9e4bf2d5a8137a89f050c10de"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.3/eca-native-macos-amd64.zip"
      sha256 "1e6b29ad0ac06d09a989370242e4913153d4e41df1f891fde91c202b734e2002"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.3/eca-native-linux-amd64.zip"
      sha256 "15c6adbc85402b37f909680af059ed7ffc644bbfe01f43d16a35dc6ca9ce6a97"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.3/eca-native-static-linux-amd64.zip"
      sha256 "59716bddab8ba02e32088606e9662e5fdd8bec39fc360fe8c40388b385c7c642"
    end
  end

  def install
    bin.install "eca"
  end
end

