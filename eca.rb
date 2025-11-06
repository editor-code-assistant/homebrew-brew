class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.77.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.77.1/eca-native-macos-aarch64.zip"
      sha256 "74680c062a94450c05774b9758fd469c2910e89018eaf986ee3cc254415c4e5e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.77.1/eca-native-macos-amd64.zip"
      sha256 "0e67c74bdfe87c8fbb17f60dbb2ce3e91a353f03ce1aff134ebf4800bd089132"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.77.1/eca-native-linux-amd64.zip"
      sha256 "1d7db3aeb809d310984fea332dc11586afabdead68d41e7c3ba2685bf2fc499e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.77.1/eca-native-static-linux-amd64.zip"
      sha256 "a529d02771980142599844181a46bb28ee6a7b56601cd88805335daf9deabe70"
    end
  end

  def install
    bin.install "eca"
  end
end

