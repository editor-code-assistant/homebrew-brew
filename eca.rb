class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.42.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.42.0/eca-native-macos-aarch64.zip"
      sha256 "e7f9623587d14c21baea10b815927e8ea5338403887ea3aed477976310093896"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.42.0/eca-native-macos-amd64.zip"
      sha256 "08d6b4eb198f5091989b0097de2502f155b5e27fa0b921554b6f285c31ddf10d"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.42.0/eca-native-linux-amd64.zip"
      sha256 "a132a8aad1cc0f9971c3e60fd2a15e0f93348ceb4a3105c96641563171fa25a4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.42.0/eca-native-static-linux-amd64.zip"
      sha256 "c115c911c0e7b0e98dbd1e8d329d1c32fb9592e5055d08581c889e06d32e6e90"
    end
  end

  def install
    bin.install "eca"
  end
end

