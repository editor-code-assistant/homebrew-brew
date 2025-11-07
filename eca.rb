class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.78.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.0/eca-native-macos-aarch64.zip"
      sha256 "ae5c12b68cdef85626bd991a32dda8d59c7ebd09bec78d960c417e4b25c6f4be"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.0/eca-native-macos-amd64.zip"
      sha256 "52b1210c1809868bf825ea97e5fc82c221b22377bd9176c0c1cbc13d22f33c0a"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.0/eca-native-linux-amd64.zip"
      sha256 "dd9acb9ae2461ef7db7d47e3414deccef0b8c6fa56556f2e1be92113e5fa7989"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.0/eca-native-static-linux-amd64.zip"
      sha256 "89c9eeb1550f7c98760e7f861cf375d33eb73bc69552f45271e14ae5be97c1f7"
    end
  end

  def install
    bin.install "eca"
  end
end

