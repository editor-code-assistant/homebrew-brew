class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.75.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.2/eca-native-macos-aarch64.zip"
      sha256 "9cc2c17d5dab69ef8723d0950bace17433c2d9ca7edb77341014f16e17090172"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.2/eca-native-macos-amd64.zip"
      sha256 "4b2f937b49d486c05d4968297ce2ecfdb5e7d9be463023dfdcabbed2da3048b7"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.2/eca-native-linux-amd64.zip"
      sha256 "89fac38aac477a06bd57401cf7857405279cf610888ab1cba61e10fdb23c1955"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.2/eca-native-static-linux-amd64.zip"
      sha256 "6666c43bd242c390b722387d9dbf596a8518555cf8847607e04a2aebeb9503e3"
    end
  end

  def install
    bin.install "eca"
  end
end

