class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.32.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.4/eca-native-macos-aarch64.zip"
      sha256 "df8af03bda4e8da059797dfe87062f9893d8877747ec3cf86560dff1e60354cd"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.4/eca-native-macos-amd64.zip"
      sha256 "2befede6ad73b654dafb401e14909aede2fded3ede42d6c843a1a1bbf0f8a45e"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.4/eca-native-linux-amd64.zip"
      sha256 "cc34898937c87ed2a0482519982a4e12b337ae9c4a1ce9f4ff969d9850e23174"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.4/eca-native-static-linux-amd64.zip"
      sha256 "4ed59daa2b5d9bb8edc83d38787d5817cd8fd5ec8c9cb53b2b9afa49501e28bc"
    end
  end

  def install
    bin.install "eca"
  end
end

