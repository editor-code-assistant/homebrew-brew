class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.73.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.2/eca-native-macos-aarch64.zip"
      sha256 "302a521de9e43ada5659ecaec04fd913ea5f6308a75decb1403573105ad5d5c1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.2/eca-native-macos-amd64.zip"
      sha256 "467140d5846d8050bf877fcd5890a035f4564fffa2e5f04e55eb38c8e18e6e8d"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.2/eca-native-linux-amd64.zip"
      sha256 "6c7f5a611d6df3738a85b83f37455d18f93a1e88b46d6ae06e807d7f0a69a771"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.2/eca-native-static-linux-amd64.zip"
      sha256 "9608f86d41e7e08bad61e84f50648600e6a179a448b2c39ca2b81eab1aaf4cbc"
    end
  end

  def install
    bin.install "eca"
  end
end

