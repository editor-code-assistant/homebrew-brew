class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.80.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.80.3/eca-native-macos-aarch64.zip"
      sha256 "edc9febaffa4b22bd36c2ef7c59aacff0df0cb3e14a39e20cb31ae8915fd6303"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.80.3/eca-native-macos-amd64.zip"
      sha256 "653652f715138d3f1b0dc28e6a9138e784b8c9a81c42976cd2edb49cc4d7fcd0"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.80.3/eca-native-linux-amd64.zip"
      sha256 "f3f2301e17d9c00d80b6615c222af200dde91568d12afd04ed58c6fe3d7391e0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.80.3/eca-native-static-linux-amd64.zip"
      sha256 "306dbcee5e3d1748b2db3b5e839b25fa53f25889d0aefe7d1a0b3db3efd8bd1a"
    end
  end

  def install
    bin.install "eca"
  end
end

