class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.57.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.57.0/eca-native-macos-aarch64.zip"
      sha256 "c1ec8b84c8ef665ff1858f97f12fec8eeb2a840e07858f1e445644dca17a01cc"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.57.0/eca-native-macos-amd64.zip"
      sha256 "1c967742d2b9d78a419a92eb0cf615d3d9c48f1234ba92c0a078fa09993e3cda"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.57.0/eca-native-linux-amd64.zip"
      sha256 "ca7ed81ce6defcb4b010cfe6c6892aafd282555e677768ea9b1af2d7f06758a6"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.57.0/eca-native-static-linux-amd64.zip"
      sha256 "b0bc533489f06febd9ff11388555b9194c6ed967ef2ba0f09b913476bf56abff"
    end
  end

  def install
    bin.install "eca"
  end
end

