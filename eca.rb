class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.118.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.118.1/eca-native-macos-aarch64.zip"
      sha256 "acba1e0896f7d51989da24f42a867f2edc3f0185115c7df4376f59179655135c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.118.1/eca-native-macos-amd64.zip"
      sha256 "68d186e21169746b7c1ef4734411e27d16991faeca9849d20f16e7ff01ff57b4"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.118.1/eca-native-linux-amd64.zip"
      sha256 "d3625741c6bb0c1acacd905b07a8bd85c3d1381e88822508fa4609c968297f3e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.118.1/eca-native-static-linux-amd64.zip"
      sha256 "8fba176f38ed2e47527bbc6679fb79cbcfa43feb4ffb2be65a83c9e7277474cf"
    end
  end

  def install
    bin.install "eca"
  end
end

