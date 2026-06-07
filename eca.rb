class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.139.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.139.0/eca-native-macos-aarch64.zip"
      sha256 "153e58a2981aa9199fddf8949f16faffb4b4644b23617c6beef50efe592940b3"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.139.0/eca-native-macos-amd64.zip"
      sha256 "47dfc843291b07c6e4ab08c072e6657477207641af6e67ca11aec423e326a585"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.139.0/eca-native-linux-amd64.zip"
      sha256 "1d9f2f2634c1d91e0ee8b633ca8b3193b6f193e80c4b902909ca9ccd39e5592b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.139.0/eca-native-static-linux-amd64.zip"
      sha256 "6f55cb02dbca3bbdca7c42bc4627282db91ce27dd1dfe436c32be411712c0c1a"
    end
  end

  def install
    bin.install "eca"
  end
end

