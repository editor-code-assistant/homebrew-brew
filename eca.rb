class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.51.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.51.2/eca-native-macos-aarch64.zip"
      sha256 "f4442efa663fa1b6ece2c996dd91f9e0405e955925eb0b06f89e264f037b4335"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.51.2/eca-native-macos-amd64.zip"
      sha256 "89ca835c8b2c1c430eef71feb76102ecdf358c53fa98553d0c7dbfa260c11efd"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.51.2/eca-native-linux-amd64.zip"
      sha256 "b085f87a34df8e0ed24e7d1744b685bb1d58eeb16bc8d4946ae7d1ad63ef4ef7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.51.2/eca-native-static-linux-amd64.zip"
      sha256 "34dacfe251730b8ca8e40554dfdc6694162fdbf35d21d374b16904d3b7d9a8f6"
    end
  end

  def install
    bin.install "eca"
  end
end

