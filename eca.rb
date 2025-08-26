class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.36.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.0/eca-native-macos-aarch64.zip"
      sha256 "d7784c8091528a7b54259241e2a45e01fe3aa906b9bfe74b481a8767684f78d4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.0/eca-native-macos-amd64.zip"
      sha256 "9992692c9b98010208db38198a0bbbf22837e07c2d4b079e04f10cb73dc674c7"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.0/eca-native-linux-amd64.zip"
      sha256 "7af407d30bf87f03c657d42984e497469fddec0a7b5cd28169ed0094fe05abb8"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.0/eca-native-static-linux-amd64.zip"
      sha256 "18592e5f2d325f7fd8240fff452cd8bf01ba1e2b9ab6c5211db58b03fe9e301e"
    end
  end

  def install
    bin.install "eca"
  end
end

