class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.77.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.77.0/eca-native-macos-aarch64.zip"
      sha256 "4dece7844712dcad346208cf2c827ecaf0c1d55c7e9f5349ec8e7910b82e7a21"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.77.0/eca-native-macos-amd64.zip"
      sha256 "162d9f1f30dc7d90afa58d9611361ab9f9f689b2e9f13fa79e3d6b03e8cfbb32"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.77.0/eca-native-linux-amd64.zip"
      sha256 "be724f7717cc5235e7270fc050117a2c0a7b300fb297a3895c8cc157a3a53fc1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.77.0/eca-native-static-linux-amd64.zip"
      sha256 "40f35b91d9d930cced6d3241e1d922055c2ce0a4fb3626156c169b0ff0597fe5"
    end
  end

  def install
    bin.install "eca"
  end
end

