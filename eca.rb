class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.147.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.147.2/eca-native-macos-aarch64.zip"
      sha256 "4e3cd8d03429446a3345f4d5794be88c4704a60e66115960a58711069014a79a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.147.2/eca-native-macos-amd64.zip"
      sha256 "24fdfb908daaa566bc09bf75197518d8ba2ad76e325f7bdf286776b102bd7d26"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.147.2/eca-native-linux-amd64.zip"
      sha256 "a8dc980991937dc27243904757aa55e67afc80a980224e7dcb05f5d8ba79595c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.147.2/eca-native-static-linux-amd64.zip"
      sha256 "2b47620c9e8c6857313a4456c07e5ff7c0cd29a9dab6afa5265ae03d61b3d72f"
    end
  end

  def install
    bin.install "eca"
  end
end

