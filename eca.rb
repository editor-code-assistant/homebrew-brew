class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.97.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.2/eca-native-macos-aarch64.zip"
      sha256 "4465ccef515f8b6e2b872fa28be5d50085cf2c87f568583bc08130056f56812c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.2/eca-native-macos-amd64.zip"
      sha256 "aa480356d267d59442af9d50545e301261efe8e0c2da2efd942f0ad3d6d6e1c1"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.2/eca-native-linux-amd64.zip"
      sha256 "5db387154503d9bce6e4d93d1cdf30b53e7e48627b169a72ac70cf7a1ce63482"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.2/eca-native-static-linux-amd64.zip"
      sha256 "d05b80e327f2b923b48d1ab96867f42c55d9817434bc077e87cf15eac095485f"
    end
  end

  def install
    bin.install "eca"
  end
end

