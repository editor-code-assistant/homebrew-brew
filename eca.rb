class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.115.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.3/eca-native-macos-aarch64.zip"
      sha256 "84465dd0412c8c731115ab4badaa629815320ce2ba663ead5e2b2bb4565099f5"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.3/eca-native-macos-amd64.zip"
      sha256 "2f0349ecac9105a854833383a8790aa16a2a120ca8f4806f4e63c64f4c1ebd5f"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.3/eca-native-linux-amd64.zip"
      sha256 "5f8b66d359a10fd5b04df4de8ea9e698c19cef57d306004591192853f19c18c4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.3/eca-native-static-linux-amd64.zip"
      sha256 "c80cbf60a245c8a5937732f9b8a0322724575d744b241252a2d98213bf8c4350"
    end
  end

  def install
    bin.install "eca"
  end
end

