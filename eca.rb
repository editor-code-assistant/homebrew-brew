class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.104.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.104.0/eca-native-macos-aarch64.zip"
      sha256 "419e0013a31ffa3ade3d088c95562324518e7799b15160b36febeb13e80ee15b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.104.0/eca-native-macos-amd64.zip"
      sha256 "903820667dfd16f5714804549ef0616b593227514911ce330f0aa13f49a8818b"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.104.0/eca-native-linux-amd64.zip"
      sha256 "d46745f133d3119c8b20cc2507f468b88c338788eb3c4c79309027875435e0ec"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.104.0/eca-native-static-linux-amd64.zip"
      sha256 "339debcc9b8dc04df3a3ebfb23790d41e9615d69a438ac56f0b5ad40cd9f0648"
    end
  end

  def install
    bin.install "eca"
  end
end

