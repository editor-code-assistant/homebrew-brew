class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.170.5"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.170.5/eca-native-macos-aarch64.zip"
      sha256 "6b744d6c2de03f0bf2f67feac0d544694a982efc067ef1a353067693b39fe942"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.170.5/eca-native-macos-amd64.zip"
      sha256 "595110f1c7ed05f2ffce3fbe6a1d0ae16e21bc303f4ce5a10f6d45d5e5e768e5"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.170.5/eca-native-linux-amd64.zip"
      sha256 "44de452da3a56653497957e7dabd2627720d6738696021c22ec575be58d2c5b4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.170.5/eca-native-static-linux-amd64.zip"
      sha256 "cb66c0fadf7469e21de5ea991ae7382ff784e437f7677389bdf4a8b1013c0fc7"
    end
  end

  def install
    bin.install "eca"
  end
end

