class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.92.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.92.0/eca-native-macos-aarch64.zip"
      sha256 "393a70568ce3f82b74d9d4f5c1cd9ab5978ada986bb1821688620d34cb674076"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.92.0/eca-native-macos-amd64.zip"
      sha256 "c93610965cd3990d0a020da43af29baa434dcaddc41bf5f619837b9bbadf6681"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.92.0/eca-native-linux-amd64.zip"
      sha256 "7fcf882d8ba24066feb31363a243d5922fc8df84c2ea245d679c45e70fe13b36"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.92.0/eca-native-static-linux-amd64.zip"
      sha256 "a2848274e10b65b2a1a4beb65a68a999f6cb906631923c9f65ac22010bea3e04"
    end
  end

  def install
    bin.install "eca"
  end
end

