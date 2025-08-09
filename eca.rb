class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.22.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.22.0/eca-native-macos-aarch64.zip"
      sha256 "f48fafd9fd9c1995bf2f63f9434a4c4c0c82c61804cc39add44b05604e7519f4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.22.0/eca-native-macos-amd64.zip"
      sha256 "5acdb854f1dd8662aa21a4c64b31dd70731ca6f54dc633b7535fdb8452c15aa3"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.22.0/eca-native-linux-amd64.zip"
      sha256 "05fd9f28fb0d5353ade5bb89763b0b396cc9f526584b05a11626c95167bcf9b6"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.22.0/eca-native-static-linux-amd64.zip"
      sha256 "03db7c3f38abee1eeca25388d6965d532552b6bce11756c67484a0fa862fb1c5"
    end
  end

  def install
    bin.install "eca"
  end
end

