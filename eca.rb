class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.121.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.121.0/eca-native-macos-aarch64.zip"
      sha256 "14bb129eb6bd6564b613f39777f8636ec6aacee2d4618f0094cade8f361354d5"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.121.0/eca-native-macos-amd64.zip"
      sha256 "db21b1d9943d63112215ac6ea96f37f4ff92065a48ad6734365136b0096bbee1"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.121.0/eca-native-linux-amd64.zip"
      sha256 "ee7c7af9acf52408aaf5988bae37b1c52adb7229473dcfe74046d73afc2b5da3"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.121.0/eca-native-static-linux-amd64.zip"
      sha256 "7ec17241b5483630689afa627cfc13e5029ff727d5867961c810de02aab6d970"
    end
  end

  def install
    bin.install "eca"
  end
end

