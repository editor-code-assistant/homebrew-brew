class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.93.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.93.2/eca-native-macos-aarch64.zip"
      sha256 "cc09fe244a158938ae312f7053cd7abbaaf007cfdaa378e6de130be8ca0e9e91"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.93.2/eca-native-macos-amd64.zip"
      sha256 "c6a7e8a13005409485197307e190ed87d5852c6e7af536ee5f8910f0dfec2580"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.93.2/eca-native-linux-amd64.zip"
      sha256 "610be1b88453360499f9d800bfe02a6112e912daad3700cedff11c4e5b955394"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.93.2/eca-native-static-linux-amd64.zip"
      sha256 "0821de2fd2d189ea15bff6d023545ace80598c94a81deed25cc65dcb1688252f"
    end
  end

  def install
    bin.install "eca"
  end
end

