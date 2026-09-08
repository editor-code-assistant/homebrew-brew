class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.159.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.159.0/eca-native-macos-aarch64.zip"
      sha256 "308a12cff17128a2805d57f0e417ee434ffb524f8380fc34220f77d52a576c0d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.159.0/eca-native-macos-amd64.zip"
      sha256 "0df2c8ac6bf7ad522b1063d09facd23e2233a120e76405f2c8edb6d7a6f7a909"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.159.0/eca-native-linux-amd64.zip"
      sha256 "324340377d6a6c37dcccb9c1b8ffdf9cc2f17f5e841051d49a8f35bb4baf415f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.159.0/eca-native-static-linux-amd64.zip"
      sha256 "3e536e76c1f7a033ca5f9cf406e3daa31b21538fd089acb894ffe66e644c95a2"
    end
  end

  def install
    bin.install "eca"
  end
end

