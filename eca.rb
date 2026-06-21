class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.142.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.142.2/eca-native-macos-aarch64.zip"
      sha256 "6a0665e82f4327e99cbb748481f44404505744a4dcfae592bcf768dafd3913b1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.142.2/eca-native-macos-amd64.zip"
      sha256 "7f464b8b661ab2f769983d500ffa43fd9f51034f5965924ed2844cf6e1d4b107"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.142.2/eca-native-linux-amd64.zip"
      sha256 "7d431a6f14243c292715fd0fa4dbf6e50be170788424324154c1ca7a8e4a03a9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.142.2/eca-native-static-linux-amd64.zip"
      sha256 "8873df2b9e9f9a5c5dea2fff2b61e0f4c4c5ef76be594d9b3ba1d7a872c95f36"
    end
  end

  def install
    bin.install "eca"
  end
end

