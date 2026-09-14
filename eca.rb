class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.160.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.160.0/eca-native-macos-aarch64.zip"
      sha256 "db6d25c871bad0c05bfded8717bd35adc512cc790d10b0d401ddd51781a6133b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.160.0/eca-native-macos-amd64.zip"
      sha256 "0f7cbef2fb75052c3312adb3367e85dbd855bab021299eb62fda7303bac01488"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.160.0/eca-native-linux-amd64.zip"
      sha256 "78bd0a7dd5163996538c71dbdf99aa88258d1e6441883880c2aeec5db4e10273"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.160.0/eca-native-static-linux-amd64.zip"
      sha256 "71cc2c9090634b1603dcde4cf900c6da2fb8eddbd83f1d0cdd04f263d34c1012"
    end
  end

  def install
    bin.install "eca"
  end
end

