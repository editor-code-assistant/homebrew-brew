class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.97.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.1/eca-native-macos-aarch64.zip"
      sha256 "dfd0baf6d2545757b209f1e8647b266569f37eec386e22d3367a5463326066d5"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.1/eca-native-macos-amd64.zip"
      sha256 "feb73493dec396832ae9f96cda95cac54419c6a0aaa5a61f6586f5bb6452ad7d"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.1/eca-native-linux-amd64.zip"
      sha256 "e6e1059a2b01c36fb16871c60bd3afa2546df0a18134b6fa256ebf95fc58216b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.1/eca-native-static-linux-amd64.zip"
      sha256 "76faa0f88808d1c63393a73c795893775ed730624fa809d6403cb60fe4ddf120"
    end
  end

  def install
    bin.install "eca"
  end
end

