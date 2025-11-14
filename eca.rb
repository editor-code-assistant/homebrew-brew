class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.78.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.4/eca-native-macos-aarch64.zip"
      sha256 "725123a9d9fc1e201311e4bd3515dbe266e52d37409765561566aee407904eb3"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.4/eca-native-macos-amd64.zip"
      sha256 "9495148a3ce4fb24ba94510ef23db4c136f195910419f371fe50397b479163c0"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.4/eca-native-linux-amd64.zip"
      sha256 "00ddf0e564721ebe2db8996b8e257852c5de2757184946c2b6d049f9a70b551c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.4/eca-native-static-linux-amd64.zip"
      sha256 "178da9a8bb0781797b5847c772f02cc47490ed5313624241c5d701ca187dfced"
    end
  end

  def install
    bin.install "eca"
  end
end

