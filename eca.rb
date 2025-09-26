class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.60.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.60.0/eca-native-macos-aarch64.zip"
      sha256 "4cc67b62484aa6fa00eb6e8a18ae3f6d1b3d0c6e878f86dda54adce03caf8adf"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.60.0/eca-native-macos-amd64.zip"
      sha256 "a8c41fd71172464970bce65cb7ea71f3199bfbb38a6387bb1560c61d4edc1ffd"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.60.0/eca-native-linux-amd64.zip"
      sha256 "13f5067ddb24ee76d6d7f90644a10dd82273961c1079e65b56a0dc211c7611b6"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.60.0/eca-native-static-linux-amd64.zip"
      sha256 "6b7c636c59cf96cba710fbd40ecaadae8e532f067b5e02ba7af8c0b108ba091c"
    end
  end

  def install
    bin.install "eca"
  end
end

