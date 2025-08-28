class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.38.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.38.1/eca-native-macos-aarch64.zip"
      sha256 "ae6fd5bfef85a3d688edb50f4007d22151d4fd70b6acb6242af26568181280be"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.38.1/eca-native-macos-amd64.zip"
      sha256 "030f42e75aa8b1168bd98259920aaf57f84c40f003adfd099f4d7d2afa7862e2"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.38.1/eca-native-linux-amd64.zip"
      sha256 "b9e1c279038d14a38f52fdbc9cf6993fc1be853dd441632c78344958ff9363cd"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.38.1/eca-native-static-linux-amd64.zip"
      sha256 "46df7b54730d268ca8cd05a7c4d6356838a3f9f0719e6851247d13e244f6833f"
    end
  end

  def install
    bin.install "eca"
  end
end

