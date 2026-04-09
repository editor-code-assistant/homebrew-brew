class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.124.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.4/eca-native-macos-aarch64.zip"
      sha256 "bb7182f9dbdfe6d666062918b022decff9a533dd1e35752f3fb0c073c89b1da3"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.4/eca-native-macos-amd64.zip"
      sha256 "aa815ca3cc45fc1b55f4e4503226aed8b6cd583463b9e369dcc341d0cf6d3c2a"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.4/eca-native-linux-amd64.zip"
      sha256 "0192f643e0b7ace4c22e48ef348dadd2c31f70a5714ae918e814916afddf7dd9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.4/eca-native-static-linux-amd64.zip"
      sha256 "feccc8e06647edd5acedf69f263ff00f9479d4fb1dc547f44b4d67edee244622"
    end
  end

  def install
    bin.install "eca"
  end
end

