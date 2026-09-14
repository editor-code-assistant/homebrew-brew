class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.160.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.160.1/eca-native-macos-aarch64.zip"
      sha256 "543648f4250c31b02f7273b3715a9175180e5d9bddcc2881c510692d1a7e9a15"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.160.1/eca-native-macos-amd64.zip"
      sha256 "b23f0205447a90c860dc0ac7b666e00c985888b40dbc8760adb3a4c233bcc067"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.160.1/eca-native-linux-amd64.zip"
      sha256 "4b2da5b5affdbbae7ef2a7575ed3ef3435dbbc62e1476143b4279951e8d56aeb"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.160.1/eca-native-static-linux-amd64.zip"
      sha256 "5ca77fe0f798c0f15e4bdc4e152102d19f9aab9115b25296e323f5b90eee7a2e"
    end
  end

  def install
    bin.install "eca"
  end
end

