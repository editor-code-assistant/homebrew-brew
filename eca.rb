class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.98.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.3/eca-native-macos-aarch64.zip"
      sha256 "3af9e9d91ceaa9031858a239409e72fa9e06cf7b8a508cfeb7d9f4bb73967b71"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.3/eca-native-macos-amd64.zip"
      sha256 "32226ce4b58d19cee490dc7f1c13da1a0dfda999df38627fa7a4f477fd5124cd"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.3/eca-native-linux-amd64.zip"
      sha256 "34a3e841ef68940167c16872a7b01b04af876139770bd88efd1747dc358e3701"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.3/eca-native-static-linux-amd64.zip"
      sha256 "c2871a42c1038b0d5630db9dc166328df927ae27fdab32fb71a1b47f29e33ac4"
    end
  end

  def install
    bin.install "eca"
  end
end

