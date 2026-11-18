class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.172.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.172.0/eca-native-macos-aarch64.zip"
      sha256 "c353900c61ead8c1c60719027523662fba63c5723b395e24f5a5ef3b5f680599"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.172.0/eca-native-macos-amd64.zip"
      sha256 "a63cfcada963a77568fcc4d60292e5a4838300d9c78e5ab144f114f5bc0e9512"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.172.0/eca-native-linux-amd64.zip"
      sha256 "9581b4f6549142931565eaa1ab141255414c9705d500a14f1db935f6d4d45da9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.172.0/eca-native-static-linux-amd64.zip"
      sha256 "4928731928e45e5fe3bcfb5047502649ae0ae73308a86253dd8a8991e01eb3c2"
    end
  end

  def install
    bin.install "eca"
  end
end

