class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.143.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.143.1/eca-native-macos-aarch64.zip"
      sha256 "64729531d31adc0a17587fdb6a443343f77ff8d6208c7ba7dddbf52d88c96392"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.143.1/eca-native-macos-amd64.zip"
      sha256 "56c4981cd39c9078258b6b846f18bfdb4accb9345363c3fa84adf7565741ec0c"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.143.1/eca-native-linux-amd64.zip"
      sha256 "7ac103e7937eaab569b3cd6717b81c8d740ccf5a221b72dbaa9c499f3624bc15"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.143.1/eca-native-static-linux-amd64.zip"
      sha256 "f9a36497faf57c6597671df82192debbe7789dcaf76c12fd39b763a64dd95064"
    end
  end

  def install
    bin.install "eca"
  end
end

