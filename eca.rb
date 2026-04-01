class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.123.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.123.1/eca-native-macos-aarch64.zip"
      sha256 "076ee91c7aaf05860475e32d5fe95e392a4c0d6d0f4884c67d83ab6138682051"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.123.1/eca-native-macos-amd64.zip"
      sha256 "7fb78f136a4b6648590d04294752f19047d532ff447a2158fc4668dfbd02f9f5"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.123.1/eca-native-linux-amd64.zip"
      sha256 "a653ad6ec97de7463da402ec50497c20124c960c4a5b59a406823d15af1aed8f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.123.1/eca-native-static-linux-amd64.zip"
      sha256 "1ce9d6b1bf9b1d34d55b5a765725b5b512587642c85571c2309d1e4ec1146b88"
    end
  end

  def install
    bin.install "eca"
  end
end

