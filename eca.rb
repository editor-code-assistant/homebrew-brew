class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.173.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.173.2/eca-native-macos-aarch64.zip"
      sha256 "ff81b849c2df168870cf3be9589d6bc7aebd1b128e9ec299a88b060186195809"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.173.2/eca-native-macos-amd64.zip"
      sha256 "b75920a208d69239127ea98a7ef8050f0b49e4195036998e43a5a79b27744676"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.173.2/eca-native-linux-amd64.zip"
      sha256 "78c293b75d44554d51f6f8e5aa8b20ccecdf16c852575ebfa081e88fb32c67df"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.173.2/eca-native-static-linux-amd64.zip"
      sha256 "90eef33f0f11d460e5066df14a730d63bf3fb7dd1dafc122b1e5b38e0340048b"
    end
  end

  def install
    bin.install "eca"
  end
end

