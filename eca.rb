class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.87.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.87.2/eca-native-macos-aarch64.zip"
      sha256 "fc4f8fefb5d723fc6981362bfd352fa74ff49b74ced9920157e6f7840c8f7c45"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.87.2/eca-native-macos-amd64.zip"
      sha256 "f3bc830498dc6e4fc70062cb8fcc797692a237b2c3ea394dfa4e443277c325c6"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.87.2/eca-native-linux-amd64.zip"
      sha256 "941530ed110254dbbae47b906efa9673d963264b66cfa918b8b59d5fda241fde"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.87.2/eca-native-static-linux-amd64.zip"
      sha256 "a1185ba8e7bbd379dd60fa5fabe4f6b59fc77e1334d81ab7da3990e885cbe318"
    end
  end

  def install
    bin.install "eca"
  end
end

