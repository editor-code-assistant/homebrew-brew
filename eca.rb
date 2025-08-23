class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.33.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.33.0/eca-native-macos-aarch64.zip"
      sha256 "21d73d7558c6cf9459191e1e37260ec40d3e90fe51d07b10145371b78d32dbd4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.33.0/eca-native-macos-amd64.zip"
      sha256 "49be0a88dfa294db73ea2ee05c1f7180269f6f381ef7bec362a0aab37b6df241"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.33.0/eca-native-linux-amd64.zip"
      sha256 "a927754e79d52bfd8387107f6f7fd5bf8c9b4b1011ac4ec3075611cc4c5a0909"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.33.0/eca-native-static-linux-amd64.zip"
      sha256 "5d587cee3cfc964cad666d89e2346e4cf25bfcf17b521b961a8c948502fbe3ce"
    end
  end

  def install
    bin.install "eca"
  end
end

