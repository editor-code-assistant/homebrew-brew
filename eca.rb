class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.128.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.128.2/eca-native-macos-aarch64.zip"
      sha256 "aab55f9c586c293faa8359295fe580477df86cb79d2d68bcaba012f1af695722"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.128.2/eca-native-macos-amd64.zip"
      sha256 "af9c796781aa26a46df6b93edd47dc64376b6d0c007f19c26233fcaf8d12b301"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.128.2/eca-native-linux-amd64.zip"
      sha256 "0b8112542c713d5da93762f1b0372c2f7629fcff897c8c60252bce8d8a9539c1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.128.2/eca-native-static-linux-amd64.zip"
      sha256 "4eb7105cd129ca4421dd123f3a074e9cd9ade765e16cb5b1a886f7f4ec50b094"
    end
  end

  def install
    bin.install "eca"
  end
end

