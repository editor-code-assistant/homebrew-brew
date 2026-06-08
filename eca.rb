class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.139.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.139.1/eca-native-macos-aarch64.zip"
      sha256 "3a7e8ba5cd1473a745faddb343d3fdbcd1ed09a36df94bc6b75d6f7253182d94"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.139.1/eca-native-macos-amd64.zip"
      sha256 "273d0102e00e4a4641f2ac9dc6847cf634051f97f3854ca49fd444d1bc880758"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.139.1/eca-native-linux-amd64.zip"
      sha256 "8f51bbe727d816f152e9896145f9bfa446af19db42a2d40dccc8732292f6bca8"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.139.1/eca-native-static-linux-amd64.zip"
      sha256 "e4cdbacd8a049bd1197e5e9541d0c39c91a18268a01643bf0c1324ab1925a815"
    end
  end

  def install
    bin.install "eca"
  end
end

