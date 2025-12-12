class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.86.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.86.0/eca-native-macos-aarch64.zip"
      sha256 "db58ab09f9c55ae2f1b4eb86031f6809b4d3958a4ff7be4ea3df710adb74f615"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.86.0/eca-native-macos-amd64.zip"
      sha256 "95a9b131f5ea7bdd5b6c5f2e2bd2145f87c5898fe5804658c97478dbdddb13a9"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.86.0/eca-native-linux-amd64.zip"
      sha256 "107cc68183cfa53ff29676048694c454c448cd58bd98483f8692e976de829986"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.86.0/eca-native-static-linux-amd64.zip"
      sha256 "9e2cf8d6dbeef84176517f95dd863d8b15f37cf8a60ed8cbefae8f2ce22cb5f9"
    end
  end

  def install
    bin.install "eca"
  end
end

