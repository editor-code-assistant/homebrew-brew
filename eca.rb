class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.36.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.3/eca-native-macos-aarch64.zip"
      sha256 "744ae9a5511a1075278fe5a41f0615b9ab36e7dbfe959887dee2790470033e29"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.3/eca-native-macos-amd64.zip"
      sha256 "c72dc0df209efc786019f8abd9d4ba372d43b847e57804cabd4d6dc7e05e79e9"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.3/eca-native-linux-amd64.zip"
      sha256 "9b95a0da5ac4e28698683ba0d4cec89573d76ab50e24348cb39612cb7ac176a2"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.3/eca-native-static-linux-amd64.zip"
      sha256 "841f4867233296867fa4782b28c7c4c05786bb97367eab8bfb98958a96bdf951"
    end
  end

  def install
    bin.install "eca"
  end
end

