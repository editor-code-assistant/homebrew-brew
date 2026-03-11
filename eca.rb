class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.112.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.112.1/eca-native-macos-aarch64.zip"
      sha256 "ac0fc4abe48f5d8b7c80e47dd7f1dc13f9fb7b8ec7f08d0c8994c0b8078b39d2"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.112.1/eca-native-macos-amd64.zip"
      sha256 "680a4b3a8d61b7f799f64162c9830a64b627c1251670a161656665d7d6f43164"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.112.1/eca-native-linux-amd64.zip"
      sha256 "dcb4d0f1534fd78e39d5d3f5c29464e9e60d45fdea70de4d606804c89a57b670"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.112.1/eca-native-static-linux-amd64.zip"
      sha256 "9ca23529d83fd8a2ded40cd0cc694ba18effd16312797edea5333aef9d7f5ec3"
    end
  end

  def install
    bin.install "eca"
  end
end

