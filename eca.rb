class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.113.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.113.0/eca-native-macos-aarch64.zip"
      sha256 "007ee6a6299d80b64958853724c1dff899cb1d2364ab77040362dceeecb01f6a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.113.0/eca-native-macos-amd64.zip"
      sha256 "ad51f92143fd2ec5aa8d4ce0332256459c6fedec98bfb0bd56b6db5b8bbdb5db"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.113.0/eca-native-linux-amd64.zip"
      sha256 "e97e655e9703577da758e7b1080d43de61c4176590c73ab3657d06fad86c06c5"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.113.0/eca-native-static-linux-amd64.zip"
      sha256 "aed4d0eb4fc166ffc3f67b9b83185fc23505fb49348961ff5fc575bbb2045c09"
    end
  end

  def install
    bin.install "eca"
  end
end

