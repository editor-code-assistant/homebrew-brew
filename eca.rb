class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.85.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.85.3/eca-native-macos-aarch64.zip"
      sha256 "41b0584683f1687ed4d1768636a7b140cd458274bd7f34458fb1285d7c2282e2"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.85.3/eca-native-macos-amd64.zip"
      sha256 "d93eb469e8f1f004b37717b4a2ddfdee7ae081711552427a0bab9de14601ec3d"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.85.3/eca-native-linux-amd64.zip"
      sha256 "882b0d893ea3098b3e45ae7583cbe734accf8c929526cb2ef9e870128624ad42"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.85.3/eca-native-static-linux-amd64.zip"
      sha256 "40305be2bf8cffd8e7dd8b4ddbf6cc022799e2a2be4b01824de24facb20b5d70"
    end
  end

  def install
    bin.install "eca"
  end
end

