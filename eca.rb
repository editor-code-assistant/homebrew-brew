class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.175.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.175.1/eca-native-macos-aarch64.zip"
      sha256 "f9e5470af1a282efc44c8b227cd1cb76d933cb3b02814451be49cce90d858f09"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.175.1/eca-native-macos-amd64.zip"
      sha256 "19d47f185c1dc0d59b447bf9d68aedf191ea57b91a65aab95266d6286246a665"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.175.1/eca-native-linux-amd64.zip"
      sha256 "bd8d9ba8d73612fafb66ad52c64cadc6dbb00c8ac5f75655a50c6e8c533b5ff4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.175.1/eca-native-static-linux-amd64.zip"
      sha256 "c82a1eb7eb61c39a844aa52e219a8169f08eb05edb833b1e12ad716ef72a0f9d"
    end
  end

  def install
    bin.install "eca"
  end
end

