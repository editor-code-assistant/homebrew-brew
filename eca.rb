class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.97.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.4/eca-native-macos-aarch64.zip"
      sha256 "0eb5ecc2d77ebed262182f4c428b953ddd3b811791ad47a483a9f5c12a45e351"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.4/eca-native-macos-amd64.zip"
      sha256 "1674dcd82724dbaeca81d4f66a4faf5a4257b02f0ac0134264ca9a5a385a2322"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.4/eca-native-linux-amd64.zip"
      sha256 "553ae67d7f11e243d7d7c25692e9cb19972e12d2a545539ae9ad897063f3ba5d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.4/eca-native-static-linux-amd64.zip"
      sha256 "2d9f202b90d4e2d3c62d947655c2ab247a55400b60afe5decb3a81371203b889"
    end
  end

  def install
    bin.install "eca"
  end
end

