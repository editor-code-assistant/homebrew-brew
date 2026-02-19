class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.103.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.103.2/eca-native-macos-aarch64.zip"
      sha256 "bf165d91296fa0cb56cf5ebf918b5b0616783e18e8dbe6ae42eb414a5f28cd0c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.103.2/eca-native-macos-amd64.zip"
      sha256 "a03e900c6dca6b413b804e8cca1fd8908202819700969c39607b45c7b7a13dac"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.103.2/eca-native-linux-amd64.zip"
      sha256 "65be467ca0e844ff4a5097eeab2001ddf9471cfdbfff36ca2026251714867c50"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.103.2/eca-native-static-linux-amd64.zip"
      sha256 "2e4cb0963e60eb021391550d89b82e7fdc750bed3bd19374a40644b08ffc91bb"
    end
  end

  def install
    bin.install "eca"
  end
end

