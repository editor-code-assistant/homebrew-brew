class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.36.5"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.5/eca-native-macos-aarch64.zip"
      sha256 "9b4aade7216eab8f002ad7a641a2d6a385fa64b319c44cb6df9bfd5a1c2b0904"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.5/eca-native-macos-amd64.zip"
      sha256 "62e3f5c680bc11162e3f0d5c7e7660ed983a0aa575fda8efbb4ca3dd5ee50ce0"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.5/eca-native-linux-amd64.zip"
      sha256 "4129310db20ccd1c19f1558d9eda122071eef553ea24d70c72e07df5f9bf2fa6"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.5/eca-native-static-linux-amd64.zip"
      sha256 "119bb4a965227c8c5fbf4a7011d1aca232b4775469e62de5f306509ae8e27cae"
    end
  end

  def install
    bin.install "eca"
  end
end

