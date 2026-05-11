class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.133.5"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.5/eca-native-macos-aarch64.zip"
      sha256 "56c22b6d5e755a3914a20c1b6ce37b9940c583afa9b2b846f27f1e4abbe714a7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.5/eca-native-macos-amd64.zip"
      sha256 "74b94703c2b404c450d17ef98821cfc9c642b4bc290fd17d77d0af8e9c802641"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.5/eca-native-linux-amd64.zip"
      sha256 "3c26200650b21b590553256c4a4f5052823c28145e5f0b4dddeb92f1b33cc90f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.5/eca-native-static-linux-amd64.zip"
      sha256 "23e99a88eff88cf6347b3eeb7783a7675141c2e6481455d3d24715e39cc065bc"
    end
  end

  def install
    bin.install "eca"
  end
end

