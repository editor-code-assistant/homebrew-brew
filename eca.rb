class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.153.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.153.0/eca-native-macos-aarch64.zip"
      sha256 "1421fb57f9d7b3a34ba0e47c39eba0166de070a82556e8b95a50b3053b325ef5"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.153.0/eca-native-macos-amd64.zip"
      sha256 "b1c0c79ba9708cddf94f92833425469817dba36ed54c78b919308a8b8cbeff23"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.153.0/eca-native-linux-amd64.zip"
      sha256 "53bcdd10ac5a7af8ed7c2f03030b85f5b7a54733a34d03bdc88f0519c68d09f7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.153.0/eca-native-static-linux-amd64.zip"
      sha256 "015ec3e783e900d5906e9ed153fef051dd0bc1da174b6848eef245cdf10c8916"
    end
  end

  def install
    bin.install "eca"
  end
end

