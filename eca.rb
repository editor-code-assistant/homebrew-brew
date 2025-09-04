class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.47.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.47.0/eca-native-macos-aarch64.zip"
      sha256 "0da8edd589d432eb5fb9565a4cbe6c7a49896de23fd68064bd7ead6058259538"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.47.0/eca-native-macos-amd64.zip"
      sha256 "08592df94f0896f2403f4c2c0896cb62f85e91cdb4628e18f43d1e8db60ee9ba"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.47.0/eca-native-linux-amd64.zip"
      sha256 "ce665c279dda6cc9a0f3cf0dd0a25c1f3505b9519db6f6382d92adeb29f09cc1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.47.0/eca-native-static-linux-amd64.zip"
      sha256 "5700b11492b719dce547523b53d3331bf2a5de5d7e4017eb638a6d98809c5f3c"
    end
  end

  def install
    bin.install "eca"
  end
end

