class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.145.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.145.0/eca-native-macos-aarch64.zip"
      sha256 "1c9d0ba702231fa4650bbcb8acc2733d2129b6f1c45533d32267fbdcd42b8b4e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.145.0/eca-native-macos-amd64.zip"
      sha256 "1001896ef2dc5546cafcae18bfb82679a2ee2fd7a985c34403e528f00c19957f"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.145.0/eca-native-linux-amd64.zip"
      sha256 "4c34481848141812d01ad00f7e1b02dfad7aadb47e4eb88965095d0994487322"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.145.0/eca-native-static-linux-amd64.zip"
      sha256 "6fbce743efec33095e2598bd4859b67164a99ef461fb132077f8059c236e5c78"
    end
  end

  def install
    bin.install "eca"
  end
end

