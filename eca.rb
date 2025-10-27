class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.73.5"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.5/eca-native-macos-aarch64.zip"
      sha256 "b3fe92f65021f6427110216d6d0e0d11f39c7d62548567db4865646e19b4aa07"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.5/eca-native-macos-amd64.zip"
      sha256 "6ce89a56da0a21c0890b0981ee876ee2234402a7eb60366c3aa47823c9b8b77a"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.5/eca-native-linux-amd64.zip"
      sha256 "c6842280e6e1bb84f41d4505742b4f248da9c164f7076bbaa880a859f849d412"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.5/eca-native-static-linux-amd64.zip"
      sha256 "0c0c9f4e77be455663ad09de08e1a09d2270d739582f50b4a8bfda17050019e0"
    end
  end

  def install
    bin.install "eca"
  end
end

