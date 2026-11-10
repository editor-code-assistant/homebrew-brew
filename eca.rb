class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.171.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.171.0/eca-native-macos-aarch64.zip"
      sha256 "391e76490a6f32b84675f0232dcdaa65be72be968a50aa5d7aa5b42d90b29e3f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.171.0/eca-native-macos-amd64.zip"
      sha256 "f2e294c1aa822ae192df6201c0478b2380a0343d4b22ed616342cdc08163f527"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.171.0/eca-native-linux-amd64.zip"
      sha256 "43ca3fc1cdde53e07bd2f9e3d53d21843400de49e41c0f30dfe371ef7f3271a0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.171.0/eca-native-static-linux-amd64.zip"
      sha256 "485fb6f2f354433c0cead4d3d3734591fc637b09595aac866b68698601a0b1d4"
    end
  end

  def install
    bin.install "eca"
  end
end

