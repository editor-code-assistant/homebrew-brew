class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.40.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.40.0/eca-native-macos-aarch64.zip"
      sha256 "7b5ff6a26128eef81574f8c10a8b34b342e68ef4cf0b309f868b32eae1882d6d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.40.0/eca-native-macos-amd64.zip"
      sha256 "7734f13077c4ecd698dd1531e430cb0324fde216192549ec5adee4c80f1cdb9c"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.40.0/eca-native-linux-amd64.zip"
      sha256 "763c28c7180662434891bb334bf65405c1418b17832d3a77d84820bf01eee2cb"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.40.0/eca-native-static-linux-amd64.zip"
      sha256 "c5376aa475903f174ccf6343f7f33f2bd34dd138eaa0baa6b1407c539eb34235"
    end
  end

  def install
    bin.install "eca"
  end
end

