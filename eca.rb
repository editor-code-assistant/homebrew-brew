class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.107.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.107.0/eca-native-macos-aarch64.zip"
      sha256 "0d56fe260b61d22c2126cd402931a601dd2b30308407c2b76480a5960643ffdd"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.107.0/eca-native-macos-amd64.zip"
      sha256 "8b4863ef898e92096e2096bcd64bd679f1284db6fcc741776e6fb82b92556b48"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.107.0/eca-native-linux-amd64.zip"
      sha256 "9216605f3461693f48b859a7b7674ce6d5cf02a9421909c6d2367bc9a4aa6097"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.107.0/eca-native-static-linux-amd64.zip"
      sha256 "321d25b54b8371789e5ea71244897ab8c9083f66e138dddc66ce5d7b214bc17d"
    end
  end

  def install
    bin.install "eca"
  end
end

