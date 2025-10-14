class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.68.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.68.0/eca-native-macos-aarch64.zip"
      sha256 "07b9b42c9ba97655ddd079c551f5925f8c38a13d687f8106ada5729a8448624f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.68.0/eca-native-macos-amd64.zip"
      sha256 "b6411bdc22fc406fe7ab3bc6eae8c923e94c1ab72818232413e1002fb587858c"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.68.0/eca-native-linux-amd64.zip"
      sha256 "7c971cec78c92e06c8d16fb132fdf306e59868774197f8f360fd34e3adf625f1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.68.0/eca-native-static-linux-amd64.zip"
      sha256 "37694b2495c1375d42bf7c4234f3878ea816a6c4004c2736b29705cfc781cc42"
    end
  end

  def install
    bin.install "eca"
  end
end

