class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.131.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.131.0/eca-native-macos-aarch64.zip"
      sha256 "aa0e9c03f1bc56a4fece3dca961eedc703f24dcb25e2a76a44667fa87595876d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.131.0/eca-native-macos-amd64.zip"
      sha256 "8162f54898c8766553eb5a6915f6c88055e83efac8e75d0c26303e3912c6a07b"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.131.0/eca-native-linux-amd64.zip"
      sha256 "279815bac62b509e692bfb2716fe29c4b3115a425b03327d808ee7cbdae3d9c0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.131.0/eca-native-static-linux-amd64.zip"
      sha256 "9bd446d73bcffd10ed0e2b985f7c189aeeaa5066fa209b59394065c5b2896531"
    end
  end

  def install
    bin.install "eca"
  end
end

