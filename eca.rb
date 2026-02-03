class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.97.6"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.6/eca-native-macos-aarch64.zip"
      sha256 "5864e36de9c3e9349885e700722322e74b8f0f1ef2cbedd403291af681462689"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.6/eca-native-macos-amd64.zip"
      sha256 "74661531fd2c330ff538fa94c169ab07d19aefcb5c55e8073f332be9d0da2c98"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.6/eca-native-linux-amd64.zip"
      sha256 "bcf90a326a3701989e3f796433ab1698e153bb60ef11cad5ae78262c835d270d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.6/eca-native-static-linux-amd64.zip"
      sha256 "0af3349bf0710f971d54e65e8f3b2a59106f6479be9905caa0197de942f99152"
    end
  end

  def install
    bin.install "eca"
  end
end

