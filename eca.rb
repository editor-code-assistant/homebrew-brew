class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.96.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.96.1/eca-native-macos-aarch64.zip"
      sha256 "0378472516e563dd588df721c64d69978aeb0d4b9b91ba821de8f9cb8acb47e1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.96.1/eca-native-macos-amd64.zip"
      sha256 "a5208ef96160e5af96ce9ea4af9d43925adbad0cfa2a2a584a63379318d2f764"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.96.1/eca-native-linux-amd64.zip"
      sha256 "abf9cd37c93d1d84e7f804b0b550552416c5509a359ab05999d57ac25d2de872"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.96.1/eca-native-static-linux-amd64.zip"
      sha256 "09471de05e6dbb6d50f6500784e594752d38479597ab9a12460a803133a6fca8"
    end
  end

  def install
    bin.install "eca"
  end
end

