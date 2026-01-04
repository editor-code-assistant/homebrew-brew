class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.88.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.88.0/eca-native-macos-aarch64.zip"
      sha256 "89fda55267e01e651798663d31c2314dee8c7117b7329f9f1c18d1c08bc49258"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.88.0/eca-native-macos-amd64.zip"
      sha256 "8be4f6f9b5a56a8c7d5aab2d42804cb1d8e6c43c7459feee3c50cd2a697ae4fb"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.88.0/eca-native-linux-amd64.zip"
      sha256 "7c10520a9ba7440ea5b6365a24ac226cb3a84dc723014aa0c29e97a846e07f34"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.88.0/eca-native-static-linux-amd64.zip"
      sha256 "a98fd309cdaf56079f23f044d05689253990f6228e04b8aaa4b8ae5f4babe3f9"
    end
  end

  def install
    bin.install "eca"
  end
end

