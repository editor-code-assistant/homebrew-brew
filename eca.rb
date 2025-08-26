class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.35.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.35.0/eca-native-macos-aarch64.zip"
      sha256 "b122da274be9583c4e4eb6b248299b49c82c1bb7357e433818ce1fd08948da90"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.35.0/eca-native-macos-amd64.zip"
      sha256 "4458fe4a8efa284c90d242ee4e0cf3218f121f5d6375749178b1de2ab1f811b3"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.35.0/eca-native-linux-amd64.zip"
      sha256 "e9a3b91af02ec6f22d7dfe2bb99cc486ea7c084900ec31513fb8b5d1dc8d7c4b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.35.0/eca-native-static-linux-amd64.zip"
      sha256 "41cac3d9680020e6e474ccd2f64bc40949c0dc0d340705a84dc0098aae703f81"
    end
  end

  def install
    bin.install "eca"
  end
end

