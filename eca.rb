class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.44.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.44.1/eca-native-macos-aarch64.zip"
      sha256 "d0d3e8f469c49f7064b9e01f92e5480d323a216f6f3ee8606a1bfcd863f35aa0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.44.1/eca-native-macos-amd64.zip"
      sha256 "b17ff9fe951181125e7ffb65d07deba4d90d23a1876e2cc650358a99e4fea0b0"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.44.1/eca-native-linux-amd64.zip"
      sha256 "299c49554706a61010da9ed0be9e466e25a43e333aeb11e62bab20aaa4ba7783"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.44.1/eca-native-static-linux-amd64.zip"
      sha256 "52e0d4bf324b9622c972a47113ed20e31020b61ff95a251463916d3f768b87a2"
    end
  end

  def install
    bin.install "eca"
  end
end

