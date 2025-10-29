class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.75.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.0/eca-native-macos-aarch64.zip"
      sha256 "622e159d6a2cfbb52fc80df4cffc7144960635ba1d29ffee562597b94c9dd848"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.0/eca-native-macos-amd64.zip"
      sha256 "53e2ab39c5525e70a4c15bcf7bde2c22c453ebe3756ccc82aa2c06d1ce833865"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.0/eca-native-linux-amd64.zip"
      sha256 "c0ee76a696589745b505b859c953af19aaf09f6db1efb05904679eda08aecf5c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.0/eca-native-static-linux-amd64.zip"
      sha256 "6e0c04d5b3b30500da08b8b09a32a89a65b20ec2fc4f7f6e8bc7344a3a06ee1e"
    end
  end

  def install
    bin.install "eca"
  end
end

