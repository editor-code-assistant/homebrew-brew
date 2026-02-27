class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.108.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.108.1/eca-native-macos-aarch64.zip"
      sha256 "d5e478b492b92485433ff341b5a23eae22169f82382950e3dd225d2cbcf1b985"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.108.1/eca-native-macos-amd64.zip"
      sha256 "28e3afef4839b125d5f4cb26cdb17f59eca5b2f1a1c9d03ae2f52feb078e45cd"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.108.1/eca-native-linux-amd64.zip"
      sha256 "ad3fb2e0cb868bde0add853a880a40137fc85578d19aa5ae46ed17a202cc3694"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.108.1/eca-native-static-linux-amd64.zip"
      sha256 "17d1dab06e3f34e7f75d42ea3f6386bcb15f6d969d5da2c8226fce758efb0938"
    end
  end

  def install
    bin.install "eca"
  end
end

