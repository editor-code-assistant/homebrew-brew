class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.139.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.139.2/eca-native-macos-aarch64.zip"
      sha256 "f5b90f8248df8eb709a26071688b59bec1207cee102acb3c682719944770eef7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.139.2/eca-native-macos-amd64.zip"
      sha256 "07ffa835d22964dd11011f569708687a6cf9c6ebae5ddaca29e60cf6bbc43bb0"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.139.2/eca-native-linux-amd64.zip"
      sha256 "031e95a4483f117bd9ca323436ec8c911b06c679345ccb26ac4d2f70a5db7270"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.139.2/eca-native-static-linux-amd64.zip"
      sha256 "8da22978b5d9a62e7342c6ce15ee8e3238a68318cfcb607b30df8caef5d98aa8"
    end
  end

  def install
    bin.install "eca"
  end
end

