class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.97.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.3/eca-native-macos-aarch64.zip"
      sha256 "0db707c75256cde530b2de56a729afd5ce1478e0b3e0fc20c36f333f51c1d3d4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.3/eca-native-macos-amd64.zip"
      sha256 "737d67915b136bc169504d6feb93bcee3fc888a43f732643c5d9b803e81d3116"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.3/eca-native-linux-amd64.zip"
      sha256 "470349aa8aec5441a27b30f7410a8419c87590e601e77117a417d4aacf5ddeeb"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.3/eca-native-static-linux-amd64.zip"
      sha256 "7f1fdb98875ee250f23b561cdcca4a4c4180e0e0b20c81fda531bdcb2a7096a3"
    end
  end

  def install
    bin.install "eca"
  end
end

