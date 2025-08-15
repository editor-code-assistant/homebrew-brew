class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.27.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.27.0/eca-native-macos-aarch64.zip"
      sha256 "4a36590b4713ef0fe820120b5985d363a6ed9515156d089ee44ed6f11e9e16ca"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.27.0/eca-native-macos-amd64.zip"
      sha256 "345c2b9c2a4e3322eaaf95c73ddd9df9b9d17be4fd276bb23bdb24a856430573"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.27.0/eca-native-linux-amd64.zip"
      sha256 "e2c8510c0bc2d0dc32fbe413550d29d89287ba56da7c0272485aa22d31d11258"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.27.0/eca-native-static-linux-amd64.zip"
      sha256 "ef9c96609e1f4186f96ac80024d442649e2d082c72627be8b931bcd0336b0461"
    end
  end

  def install
    bin.install "eca"
  end
end

