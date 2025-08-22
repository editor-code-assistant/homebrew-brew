class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.32.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.3/eca-native-macos-aarch64.zip"
      sha256 "dc6856cb843ddbcc4af5fdf25717a15ad27ea9a4bba8eef7df4dfe828b485d8e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.3/eca-native-macos-amd64.zip"
      sha256 "c8288727fdf7f713f80aab9c1eb90da810c733eca56c4f921753a502060aec69"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.3/eca-native-linux-amd64.zip"
      sha256 "61da387901bf38363dfc84b63fd394f951a00fc77ef92214bcbf70bc26675ac9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.3/eca-native-static-linux-amd64.zip"
      sha256 "a8a1f1b13ae0cc7d72bc63d65161fbf9b0367b8c2a6d9a8b4975998cf3a71906"
    end
  end

  def install
    bin.install "eca"
  end
end

