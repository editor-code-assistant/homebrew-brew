class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.63.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.63.0/eca-native-macos-aarch64.zip"
      sha256 "882e65f658884dbf1461d3e21dbc565398d082f99219b441a40d7f43b5046f23"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.63.0/eca-native-macos-amd64.zip"
      sha256 "1bb50171c540a0c33aa54a38d562353583a94d5de42ff1256890f958a12cf4df"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.63.0/eca-native-linux-amd64.zip"
      sha256 "067f23996f26a2aeb1f04291ac9a2ca992155809db17465da220d91095d88807"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.63.0/eca-native-static-linux-amd64.zip"
      sha256 "82bde62b0768e2454af5a7415793ca45b997b5f110fda5fa754083545a9245f6"
    end
  end

  def install
    bin.install "eca"
  end
end

