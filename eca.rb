class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.100.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.4/eca-native-macos-aarch64.zip"
      sha256 "24a1695f1627d14b0714864ad6a8185fd30ae7566a751909b8533c751def9f2b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.4/eca-native-macos-amd64.zip"
      sha256 "7a80de8c5d49b226dad817420f1bce24c2bdb361b939c99412486bc09a02edb6"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.4/eca-native-linux-amd64.zip"
      sha256 "9a9fb1621f49e7342d5741dbaaef377cc4b91579cef1cf388a662c27c9bb9f29"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.4/eca-native-static-linux-amd64.zip"
      sha256 "f75b6cae1df1abe84a27f77a8e223dc8867d872d54312ab61235d0b4c104649e"
    end
  end

  def install
    bin.install "eca"
  end
end

