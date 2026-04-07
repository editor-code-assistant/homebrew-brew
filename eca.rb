class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.124.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.0/eca-native-macos-aarch64.zip"
      sha256 "242a44d81bf860580dbd434df28fd4e9cc0e16becda833899a12c1e58fb2d765"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.0/eca-native-macos-amd64.zip"
      sha256 "67ed2323673d6f009c4df89ed0aa4960e34a910bff535bc173bd074c7a5d5af3"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.0/eca-native-linux-amd64.zip"
      sha256 "e4b0d9daab5f48468836de9d4bbe0b9c27b59f088b1df3165103e3c5011f21f1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.0/eca-native-static-linux-amd64.zip"
      sha256 "1afdc912c942a9339430b979cedd7804a8699377a154a1fb6ae20a885b0bdd68"
    end
  end

  def install
    bin.install "eca"
  end
end

