class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.116.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.4/eca-native-macos-aarch64.zip"
      sha256 "d55b24ee405e9c6fdf11656e50dad673d5523c0c2fd94e813494e9a440e42a4a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.4/eca-native-macos-amd64.zip"
      sha256 "653fb7b79f9f65f9a602ed1630c8e961534f8ce3a2a9b3a6e335c445b70942b0"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.4/eca-native-linux-amd64.zip"
      sha256 "cdf2a2c2d6fa63b181c612c0b8d465e80a3264eb4d4806577b83993f8c19adeb"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.4/eca-native-static-linux-amd64.zip"
      sha256 "95551f6bdbab1b97dcfd4e29c72f36812ec4e6408058d4ce783953a539aa3ce2"
    end
  end

  def install
    bin.install "eca"
  end
end

