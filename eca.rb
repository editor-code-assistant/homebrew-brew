class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.28.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.28.0/eca-native-macos-aarch64.zip"
      sha256 "46a9576cc6bb23748eedeb6191b18b765aadd564ba6b2ab3aa906591c4b2419e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.28.0/eca-native-macos-amd64.zip"
      sha256 "d5ac066f7bcc7e5d15f5389ef4e81e8b89c6a843afdf4e4583034e3bcece8c51"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.28.0/eca-native-linux-amd64.zip"
      sha256 "e04a0542454519a170b564d8ab69cdf1328e0b6ce9f380488eaee403996aea51"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.28.0/eca-native-static-linux-amd64.zip"
      sha256 "b036fb5583a89b415378c6612b72c80eee914856b5cf0499b451ac2497cdea80"
    end
  end

  def install
    bin.install "eca"
  end
end

