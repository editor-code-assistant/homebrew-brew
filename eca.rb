class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.53.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.53.0/eca-native-macos-aarch64.zip"
      sha256 "3032e6371a0300dbfbcb54db0997d85e434a878a46b20a5d6da981a663fbb071"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.53.0/eca-native-macos-amd64.zip"
      sha256 "cc6564c91e8b9aa74923c69b0620eda5a9fe5ef97cd2917d4469dde77ee45139"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.53.0/eca-native-linux-amd64.zip"
      sha256 "52b5a1d98c5e10987462fbeec84afd262b93811fcf7002795b4a324c16970c56"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.53.0/eca-native-static-linux-amd64.zip"
      sha256 "f9cd58cec9fda7eb85adb53087aae9d1123b35a7fd0f6c5f4c3e40a0980829f4"
    end
  end

  def install
    bin.install "eca"
  end
end

