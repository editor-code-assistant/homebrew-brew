class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.125.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.125.0/eca-native-macos-aarch64.zip"
      sha256 "f2e5f736647dbc2da1c50cb57cb3ae486d8083ff0511deac4332e58cf08c9c6d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.125.0/eca-native-macos-amd64.zip"
      sha256 "4eb88749e872a318f17cfc535d1f7ac919b7205219ff83e9e8ef997769b5e659"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.125.0/eca-native-linux-amd64.zip"
      sha256 "31b7117d6b82411457d062bc4e5df72fe61b33f2d4850e532bf08c605603cde7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.125.0/eca-native-static-linux-amd64.zip"
      sha256 "f9fea107d43df6112e2261164e6c619ba96982e641df45bbefda9e971fe2f6e1"
    end
  end

  def install
    bin.install "eca"
  end
end

