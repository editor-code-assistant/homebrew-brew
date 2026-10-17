class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.165.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.165.1/eca-native-macos-aarch64.zip"
      sha256 "5d60973f3876c246844e4da9c0e42fb42ad329ad68cba8853e623a184c0c7cc1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.165.1/eca-native-macos-amd64.zip"
      sha256 "ecebaabae536be314628c758f6ec3eee362b79e10488a33a159a167d84d17316"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.165.1/eca-native-linux-amd64.zip"
      sha256 "4f1b3034080d01c4fcff398a94b647a3de6d4794d9091d8399d071b855521b0b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.165.1/eca-native-static-linux-amd64.zip"
      sha256 "37b5dba2212cebda9c7e17fc9101dc9227da9b97483c3eccf4fc0a462e6fbc8c"
    end
  end

  def install
    bin.install "eca"
  end
end

