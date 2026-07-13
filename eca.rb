class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.146.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.146.1/eca-native-macos-aarch64.zip"
      sha256 "6283663e82ebd6acb6e9b7745f73499244abecbe3d7da66843182b57209151aa"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.146.1/eca-native-macos-amd64.zip"
      sha256 "34a7725f5a2f406bd992739b4a1a83e534309ad4f18361b5a9aca6f065dc04d4"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.146.1/eca-native-linux-amd64.zip"
      sha256 "e02657eb5457c6a6e19aadc56c65267e757e0acfe312cc1cac7719a0d9204486"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.146.1/eca-native-static-linux-amd64.zip"
      sha256 "f89c56321c9974f5bdad831114c701275b99bbdb01fff0376c0a7e4d29a1f525"
    end
  end

  def install
    bin.install "eca"
  end
end

