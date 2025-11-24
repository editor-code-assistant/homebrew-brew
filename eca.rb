class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.80.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.80.0/eca-native-macos-aarch64.zip"
      sha256 "0c6678550cb6e0e35139d0382d087cc6c61b42f03d0a5ba80f6177fb74ea2072"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.80.0/eca-native-macos-amd64.zip"
      sha256 "91ad26fe073ac03c5a548edd6e48af379853c7d084786cd5bc135260e8b48f7c"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.80.0/eca-native-linux-amd64.zip"
      sha256 "5a8c2d6d8f8d41a8e452181593421c341fd721d0248829b715ba2b71290360dd"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.80.0/eca-native-static-linux-amd64.zip"
      sha256 "24041527f90cc348185217f59c0df22d0c43e6800c4ccc6f3ff52f947d4989df"
    end
  end

  def install
    bin.install "eca"
  end
end

