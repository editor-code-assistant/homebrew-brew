class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.70.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.0/eca-native-macos-aarch64.zip"
      sha256 "c6a2dcd20c9cbb0a87e459c98f9e7c2a919700148b7e6d60e355c1a86cc60ac3"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.0/eca-native-macos-amd64.zip"
      sha256 "aaf5e055647794205f34dedbf3e2c13121247404d8080d73f3674a56250f80bb"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.0/eca-native-linux-amd64.zip"
      sha256 "61d9603d83454e85f61e66045a6e8678b2d102caebe3e162430db4b27e5c6ab3"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.0/eca-native-static-linux-amd64.zip"
      sha256 "d820e53b51dda7939875bd841be7a7c4f758f4508b1ffd12c06f4693d446f791"
    end
  end

  def install
    bin.install "eca"
  end
end

