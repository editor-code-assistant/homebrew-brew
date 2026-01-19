class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.93.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.93.1/eca-native-macos-aarch64.zip"
      sha256 "92731e1574211452dac6903713176d4ddf4213a0d7f623b3e43ec56aaec30b91"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.93.1/eca-native-macos-amd64.zip"
      sha256 "6afbf3482025b433394ea532fae70c7431bfdfd46c31fff8b75c6e35ae9de865"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.93.1/eca-native-linux-amd64.zip"
      sha256 "de5ca6b2f7ce6cc575896ff6db1379bcdcb6a774b2bc474b489554f77e877a86"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.93.1/eca-native-static-linux-amd64.zip"
      sha256 "2b481447276396b85cc8fe5519c336fab42e20f7cabd8b4d750c78a0182a308a"
    end
  end

  def install
    bin.install "eca"
  end
end

