class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.109.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.4/eca-native-macos-aarch64.zip"
      sha256 "18ee4324dbddc16c778dd925222c54e00fbeff7501a03900b64ec997439ee086"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.4/eca-native-macos-amd64.zip"
      sha256 "52abff9a942f013594bfe8fabde8c0ab6a457cb2edcd3c7224a4f631cb7d009e"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.4/eca-native-linux-amd64.zip"
      sha256 "7ddbbc75966be808ba388690471870842f80f8d59a8c9b750b50ff1b644a3a87"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.4/eca-native-static-linux-amd64.zip"
      sha256 "7644161d5fe2b638201ff6403946061289702c9a9b2f1e3485f85bf11a7a1d60"
    end
  end

  def install
    bin.install "eca"
  end
end

