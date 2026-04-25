class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.129.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.129.2/eca-native-macos-aarch64.zip"
      sha256 "2a4df04ac5dbdf5aee307338c08fd1b724a90cd9295b13239b8404d15d3b38be"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.129.2/eca-native-macos-amd64.zip"
      sha256 "d26a643b1910b7461167bde6a8a03cddb46165852e1a3b592ec852a71b634b5a"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.129.2/eca-native-linux-amd64.zip"
      sha256 "2427d015332b07fc4299760c7f56fe66aeccda2ba73a484ef14acc9d67a2d9a6"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.129.2/eca-native-static-linux-amd64.zip"
      sha256 "15b675045a2259fadcce9592075a5961a05a8edbaa4f4c902565406c0edc1f67"
    end
  end

  def install
    bin.install "eca"
  end
end

