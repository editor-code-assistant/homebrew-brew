class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.165.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.165.0/eca-native-macos-aarch64.zip"
      sha256 "c8fab50587e70e58f9e7eefcc3f7cc3a87c88eb73688b1a0b2bce79225d96fef"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.165.0/eca-native-macos-amd64.zip"
      sha256 "0c2291f9f19acb4b9426713ae5d58edb233288ad7593a159da38d11c3e111216"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.165.0/eca-native-linux-amd64.zip"
      sha256 "8665ed612513bcad1ceca3ccecd2380405fba56b31ede85dbfd6f2afe9291a50"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.165.0/eca-native-static-linux-amd64.zip"
      sha256 "235c9bc70c83e09163dc39c2b652883ee6bc0c0f0bb64de52465a6f51b83be17"
    end
  end

  def install
    bin.install "eca"
  end
end

