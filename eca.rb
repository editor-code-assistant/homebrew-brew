class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.112.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.112.0/eca-native-macos-aarch64.zip"
      sha256 "a4d62b7c1f6b27ee4c156f46537ef26830468c17f9bcff2e335781323f0f9d12"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.112.0/eca-native-macos-amd64.zip"
      sha256 "24e33764ff5fafe9bc131a00a1877c0bc0629d8758f7eda55dd1eec138b8f0e0"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.112.0/eca-native-linux-amd64.zip"
      sha256 "38c21b3f5db8406d882be71882b3ee27ad1ca940fb44951ad534204ff03b3238"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.112.0/eca-native-static-linux-amd64.zip"
      sha256 "8b1a71e37fcf864ee0a95e1438713cdec86a12c3a675cc51c9a439fa3e4d9a2f"
    end
  end

  def install
    bin.install "eca"
  end
end

