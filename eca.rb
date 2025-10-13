class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.67.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.67.0/eca-native-macos-aarch64.zip"
      sha256 "895c5f15eb7743add0ffe0ee97f76a8a5646a9ad80c74b25eab01948b13d8ef5"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.67.0/eca-native-macos-amd64.zip"
      sha256 "1728cf6b1f1d8ab991f1727a1c4d2906c502fd7e22a7aef5b0677d0d9d3af425"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.67.0/eca-native-linux-amd64.zip"
      sha256 "b86177276c21bc72474aa72ba54bc4745a1f258d7b411c014f93f78f2eb413c7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.67.0/eca-native-static-linux-amd64.zip"
      sha256 "25d7f8dd4db8a8277c7c285bc7f21c0f41f17833965aa95fa472a9d178f6e720"
    end
  end

  def install
    bin.install "eca"
  end
end

