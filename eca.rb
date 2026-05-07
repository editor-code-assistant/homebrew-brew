class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.133.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.0/eca-native-macos-aarch64.zip"
      sha256 "9c689e5df44e93367a06e2817ee5966cba4ace563ce5163763de677ce7dd921d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.0/eca-native-macos-amd64.zip"
      sha256 "542903d34731d1c16e98beedb9fe4a087dae28ef53164834479d16e7bc6230fd"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.0/eca-native-linux-amd64.zip"
      sha256 "836046c9dadc88ec4df1f272f6f3fe67e9faaf2b431599cb96973bf144ac65a5"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.0/eca-native-static-linux-amd64.zip"
      sha256 "cd09cbff84bfb2cf60679ba3c6a4197d3ad97787e8bb11b105fde6e7b9a5dc92"
    end
  end

  def install
    bin.install "eca"
  end
end

