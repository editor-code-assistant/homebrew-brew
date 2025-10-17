class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.70.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.2/eca-native-macos-aarch64.zip"
      sha256 "348cae226260286d60ad9ac5e18c544534cecbc82abe8cd039eb21c5cd244abd"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.2/eca-native-macos-amd64.zip"
      sha256 "9116678dcec5b110132d65315c6d68298b18aa25083058a51957ad1be539b490"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.2/eca-native-linux-amd64.zip"
      sha256 "762449b5f5fba4a8605b5fc0befc620462841460b2e2d147d1e08afff53d5e61"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.2/eca-native-static-linux-amd64.zip"
      sha256 "e8d71b85d2ce4be9d62ee3797b573579916deeb05f3aadc75bd2323ede43b2fa"
    end
  end

  def install
    bin.install "eca"
  end
end

