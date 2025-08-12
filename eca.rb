class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.24.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.24.3/eca-native-macos-aarch64.zip"
      sha256 "dd089f933c1531a6a989234e465de897d1c99db40a2fa4dec2784463fa9f0ae3"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.24.3/eca-native-macos-amd64.zip"
      sha256 "e431f2243dc91eee075ade93f372263cc080c2211c307f9521ece895fe8a164c"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.24.3/eca-native-linux-amd64.zip"
      sha256 "240ca095b24eb3fc6976a69e53d007c5c6028864ed1633ad298fc612e7edfd80"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.24.3/eca-native-static-linux-amd64.zip"
      sha256 "84518803ff579c3716c19e15e94304663abb1a76b02499c3de459c4bd0340011"
    end
  end

  def install
    bin.install "eca"
  end
end

