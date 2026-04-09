class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.124.5"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.5/eca-native-macos-aarch64.zip"
      sha256 "cab1414d78af1e3392c6d526ad57c10b324d85fc6cd7fc01050bd45c538f7096"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.5/eca-native-macos-amd64.zip"
      sha256 "aa9ef49c4f1821b4c4feea3ce914fa73faa408145344436dd367a1ec8ce65df5"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.5/eca-native-linux-amd64.zip"
      sha256 "17ec53ce23a06154a5de33e7ead21178cae7c4ffa66886da6c0e7c5cd2b95946"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.5/eca-native-static-linux-amd64.zip"
      sha256 "543390e4cfc0c03f9d266ca5376fd7bda2281448d705d46ce38d667aa2d110ed"
    end
  end

  def install
    bin.install "eca"
  end
end

