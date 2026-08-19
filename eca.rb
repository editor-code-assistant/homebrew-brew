class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.154.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.154.2/eca-native-macos-aarch64.zip"
      sha256 "2437909c638cd341928c0f5ea6676a37612fb464dafb24a7ada8a77df6f1c146"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.154.2/eca-native-macos-amd64.zip"
      sha256 "d2baa39d034cb44a2da92a6d2c8bdb2975f0d4b933a386fa68c52bf9b67fc4a9"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.154.2/eca-native-linux-amd64.zip"
      sha256 "f1d32d614e9ba381f98139059ee43214439b3b693ed2e79f3db5ebbaca1f08a9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.154.2/eca-native-static-linux-amd64.zip"
      sha256 "0dd1c29add18b59c0a8442e5a9897c58b0c4d56ae191dcbb39fc3f54b4cdbbba"
    end
  end

  def install
    bin.install "eca"
  end
end

