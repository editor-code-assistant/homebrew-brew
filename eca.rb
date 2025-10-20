class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.71.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.71.0/eca-native-macos-aarch64.zip"
      sha256 "2d0790c827c86189ee5059d820fba1a01f3887032b814b9325a6ad36da8af8ea"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.71.0/eca-native-macos-amd64.zip"
      sha256 "ef8ac1fc419663c2456f9f260010ae539a2c5c2128ca250f8142c1d44fe00a86"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.71.0/eca-native-linux-amd64.zip"
      sha256 "73c94047d1821e1721df39117ade109ebbf4db5287ed71109524e3239157abe0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.71.0/eca-native-static-linux-amd64.zip"
      sha256 "a815c99eb56c36a1646b3e57ff8d90e100add3398f410f260724b3ab764b91be"
    end
  end

  def install
    bin.install "eca"
  end
end

