class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.116.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.0/eca-native-macos-aarch64.zip"
      sha256 "5052fc6740589227695c2cb7fe3d80512e32763a638a77e0704ee1644cfa5ac3"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.0/eca-native-macos-amd64.zip"
      sha256 "b7e3f262fb993dffd7cc2b00fd40f2d68f123c73337d79d488c84e05deb8d5de"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.0/eca-native-linux-amd64.zip"
      sha256 "1680af480eeb41700baff814c76b540fb234fcd61eb84e1e1c791fe625500e8b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.0/eca-native-static-linux-amd64.zip"
      sha256 "70c0af4e39b5d9bcd336399359c5e6733e0e398d38bfbe6cd931f9615f3aa8bf"
    end
  end

  def install
    bin.install "eca"
  end
end

