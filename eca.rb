class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.84.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.84.0/eca-native-macos-aarch64.zip"
      sha256 "57d141ef85752fd317bbc7b5f925ef06305136f323989b2496802900da2e9a78"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.84.0/eca-native-macos-amd64.zip"
      sha256 "08d70979d8b820e6734502776ab7d01526c7e3a5aed8dbe1c39e8995da3516d1"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.84.0/eca-native-linux-amd64.zip"
      sha256 "4cfce630fe701afc28c7dfe752d8852015249bd7ce446c0b72366a13c03b711c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.84.0/eca-native-static-linux-amd64.zip"
      sha256 "c3210f0353a413e3e1ab85cb5b03ef382b617618dc79ea8c10ea4eb0e7537563"
    end
  end

  def install
    bin.install "eca"
  end
end

