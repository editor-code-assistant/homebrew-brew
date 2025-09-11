class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.51.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.51.3/eca-native-macos-aarch64.zip"
      sha256 "ef78d0b5b256e22a26f4a580b41b66567aeb73887abca2451313960fdd25239c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.51.3/eca-native-macos-amd64.zip"
      sha256 "e8cacfad8a3cd431aa59530376f718d234056fd59ad72279697efaf0c943b2ec"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.51.3/eca-native-linux-amd64.zip"
      sha256 "193ce7cd71c3302937ed0177145facfc2237b5504646313ce7283039de75fa82"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.51.3/eca-native-static-linux-amd64.zip"
      sha256 "63950d3c10927a6477a5f58dc807195e62811bf2c722a27900be4aa3db65f2d1"
    end
  end

  def install
    bin.install "eca"
  end
end

