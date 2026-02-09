class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.100.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.0/eca-native-macos-aarch64.zip"
      sha256 "661cfd924a11011136e904e4603e9d103f8b414e1b8c04d424775a09a35c1ff4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.0/eca-native-macos-amd64.zip"
      sha256 "0cd4cbbc23c1ee54ecfece33afbeb5afe407f2ce9257ec964df5d42aaa66461c"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.0/eca-native-linux-amd64.zip"
      sha256 "2cdb6fd1c5b5a80bf05defac61ceaefa29f4198a081aaa3663488a750467c1de"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.0/eca-native-static-linux-amd64.zip"
      sha256 "760e924e2491bbc2cc8d98da9a42672eef50272cc28be474fb45644ab87ecf78"
    end
  end

  def install
    bin.install "eca"
  end
end

