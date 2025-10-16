class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.69.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.69.1/eca-native-macos-aarch64.zip"
      sha256 "d8ac98a2841711250807936e69f64902c3a09546ab5b3a33d514fd71577faa0e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.69.1/eca-native-macos-amd64.zip"
      sha256 "363713d73642372e4b420397e392419b5b38b7c9875da33b7cc7319e5d95cc6d"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.69.1/eca-native-linux-amd64.zip"
      sha256 "3b96e8757a6696829217d5bed6aec34dff2327145746d676bb03f75b83f222fc"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.69.1/eca-native-static-linux-amd64.zip"
      sha256 "f3220373c0a9b18645f14c6034df7f6d847a6155e849031fb33eb581cba9ba20"
    end
  end

  def install
    bin.install "eca"
  end
end

