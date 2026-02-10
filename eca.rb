class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.100.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.3/eca-native-macos-aarch64.zip"
      sha256 "a84b9bfde5a85da83c8d2d7d6f13d19065bed924a7d93bb09992bbff6241385f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.3/eca-native-macos-amd64.zip"
      sha256 "7495f82b5b2eb7a60d3406d2c3acbdfe1626e566f0eb47946cb4f1e6b353ff21"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.3/eca-native-linux-amd64.zip"
      sha256 "bbe2500c543eeafcf161d6f3b28f2ea027d6e0d58549e0f6d4b27b1758eecb67"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.3/eca-native-static-linux-amd64.zip"
      sha256 "7159f72fe041309caf06410c133729261a5eb08e8888e983fa93f198e653bb8a"
    end
  end

  def install
    bin.install "eca"
  end
end

