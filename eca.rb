class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.114.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.114.1/eca-native-macos-aarch64.zip"
      sha256 "c6a056dafefdef68fa157d87022f480813ac66626be3ec04846ac16fef413b73"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.114.1/eca-native-macos-amd64.zip"
      sha256 "afd482011d0d5e232180933d498ef64244daf53252cb4d609ac89239178c22b7"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.114.1/eca-native-linux-amd64.zip"
      sha256 "c01d3ce8ad1ffe29a6df2eefa224673f0cb7ffb0abad3ad2b1c00da8ef3c47d9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.114.1/eca-native-static-linux-amd64.zip"
      sha256 "4a797a909d7ca8161f5f6949caa741093d221003dfafcf103507fee49838e7d4"
    end
  end

  def install
    bin.install "eca"
  end
end

