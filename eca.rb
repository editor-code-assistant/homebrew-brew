class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.78.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.2/eca-native-macos-aarch64.zip"
      sha256 "7b992e1b3d10a3cf2937aaccbab3d528fd96f375798178705fbed437a55d78c7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.2/eca-native-macos-amd64.zip"
      sha256 "8f04e77d713bf9ed0b70592c03be891a6974e5f048fb178bbd73d037cb332614"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.2/eca-native-linux-amd64.zip"
      sha256 "a7151c7aefa0d7f99cdc9fb804c2823ca13b054b24f9e7f404855ab36dd0225d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.2/eca-native-static-linux-amd64.zip"
      sha256 "3dbfec468424212dc236afeba0552bce582c982c6f4ef906ac7a8447390ab78b"
    end
  end

  def install
    bin.install "eca"
  end
end

