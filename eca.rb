class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.73.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.1/eca-native-macos-aarch64.zip"
      sha256 "4a1016c5bab80e7b527f84bd629327d7efcf30bfec5c7c336085e14a63fc2df0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.1/eca-native-macos-amd64.zip"
      sha256 "f96562195da950a32ff047e9214ab7862839a93c56d254d236f5d259d7ce8030"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.1/eca-native-linux-amd64.zip"
      sha256 "fb196bbd1ddb775b798dec889cf114a7df29149165b115dbab0729a1a55d9869"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.1/eca-native-static-linux-amd64.zip"
      sha256 "510c3ccbad3be5b646569a0d86b6cd274017a992a9b9bcf61bd12501b1186d73"
    end
  end

  def install
    bin.install "eca"
  end
end

