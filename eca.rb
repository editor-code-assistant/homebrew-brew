class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.30.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.30.0/eca-native-macos-aarch64.zip"
      sha256 "e8aca2e95c4aab287a1e99847c80e26d0016a05c0c675b969d70a9939088eef8"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.30.0/eca-native-macos-amd64.zip"
      sha256 "f18b2f54bc402896d4bfdce5343ac2a4f2c5c16ee3d2cc06034a90822d7762ed"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.30.0/eca-native-linux-amd64.zip"
      sha256 "58bd7b2797ff8ec8a6135610ded6d4dbd7bb8e75977a4036ba180dd798358a00"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.30.0/eca-native-static-linux-amd64.zip"
      sha256 "c8827e3fc55fd7f942fc932f3f1e759e44a8057376b627d8a955f7aa8ca9bffc"
    end
  end

  def install
    bin.install "eca"
  end
end

