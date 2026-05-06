class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.132.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.132.1/eca-native-macos-aarch64.zip"
      sha256 "aee3329008f54810c63fbbcdc335b066f6a6a91c4829338b364fded650eaec2a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.132.1/eca-native-macos-amd64.zip"
      sha256 "42038e3e4a21c9b4b2908c9b6180227678f0fd381b93aaedeb7b5a15f77bac8b"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.132.1/eca-native-linux-amd64.zip"
      sha256 "3ccd3675d03fa50f11b3cc01cd95ec72e4b8fdc3e16ed96b8b69a1dae6ae1c55"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.132.1/eca-native-static-linux-amd64.zip"
      sha256 "54e1376d62a48fe6fd017e5c9e692243774dfe8d919732a537bdf81200f8bea7"
    end
  end

  def install
    bin.install "eca"
  end
end

