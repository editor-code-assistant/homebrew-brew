class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.109.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.2/eca-native-macos-aarch64.zip"
      sha256 "1a13af112e2ab59f09fe5c2c19f3010f8cefc806dd2074900f93516c87116e29"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.2/eca-native-macos-amd64.zip"
      sha256 "1f0a408e5dc641c5356eabca1de696e8930c4261ea607b2dec03ad8c5e8f252e"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.2/eca-native-linux-amd64.zip"
      sha256 "e74d583a7cb9861a10601838046d37348910acaffa8396efd23ab5ccaa146bf7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.2/eca-native-static-linux-amd64.zip"
      sha256 "4550ed63394f44cd188fae5a4750ac2f6d27e6ac5e793575e64eb14a9e5cc5c7"
    end
  end

  def install
    bin.install "eca"
  end
end

