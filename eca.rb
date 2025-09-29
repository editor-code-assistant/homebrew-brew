class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.62.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.62.0/eca-native-macos-aarch64.zip"
      sha256 "d36872235045eafe46db3899d6a1325dde1e9a2b4363b56d6107462831fbc16d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.62.0/eca-native-macos-amd64.zip"
      sha256 "e0bc02d1a9810321d23751b6ea794c440e88e0f70ad53925122281919b64fd7d"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.62.0/eca-native-linux-amd64.zip"
      sha256 "f0bee72d69e1980606efec90b3ede8a7b1d83f5896297ffbec0cb96dcba869d0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.62.0/eca-native-static-linux-amd64.zip"
      sha256 "f328386b4858963fc35715b398ebd13462176a286d58a079f174315a8465fde9"
    end
  end

  def install
    bin.install "eca"
  end
end

