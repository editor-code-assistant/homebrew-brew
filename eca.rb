class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.90.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.90.1/eca-native-macos-aarch64.zip"
      sha256 "04812f18999ca48ba93059c8c62e7e90a1f017e011bcb7c1fd6ff0b0834bf699"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.90.1/eca-native-macos-amd64.zip"
      sha256 "7a13df24807b98e29e38404781ed2668a16d5e9ef293749cc5feaec5303d0138"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.90.1/eca-native-linux-amd64.zip"
      sha256 "2b19c262a22158f35f33a63986957f84db9d9e9297cd9ca2eeb26a208eb602e1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.90.1/eca-native-static-linux-amd64.zip"
      sha256 "675e207d05380192b39b9acd72a81e7b3a767c96f2cff60d4476358acec15207"
    end
  end

  def install
    bin.install "eca"
  end
end

