class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.90.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.90.0/eca-native-macos-aarch64.zip"
      sha256 "7f45d00ecdd432cd89b1f0392d624508aa4f4722e6021ddf29af60d76eb79c9b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.90.0/eca-native-macos-amd64.zip"
      sha256 "c42713eb471d75e143f774e0ecc06265b417ae043e1eee1b8408cd805adbd236"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.90.0/eca-native-linux-amd64.zip"
      sha256 "c7fff613ab2f1cff3ad6f7b08bd2dbae84c5d85d53bdbf228b2adf727c72e1da"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.90.0/eca-native-static-linux-amd64.zip"
      sha256 "937208ead7661dc2bc13bb771a2296c2293ba86620d86327f56b7bda396fe562"
    end
  end

  def install
    bin.install "eca"
  end
end

