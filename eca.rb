class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.124.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.3/eca-native-macos-aarch64.zip"
      sha256 "29041da73c5097dc99c903acd051f2eafa2755af61f17d9409b14294e74f95c8"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.3/eca-native-macos-amd64.zip"
      sha256 "9e761ec11875becd5d3a075a7d8ceed5f9ae35b5e21b94f540b6359cd4ef6f96"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.3/eca-native-linux-amd64.zip"
      sha256 "aeae3a18ba79f0d06a15fd92d391d733835ba30687a0a02dded97bf4477fe694"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.3/eca-native-static-linux-amd64.zip"
      sha256 "3fef416d32f36b7572b1f02c650c27aa8a3808169748d036434a96cb3380dd0f"
    end
  end

  def install
    bin.install "eca"
  end
end

