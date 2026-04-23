class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.129.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.129.0/eca-native-macos-aarch64.zip"
      sha256 "d9f8e2bf1ea8b67e78c0e24b17c2cd4f314e88eb42163c35f776dcbc9a08d9b4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.129.0/eca-native-macos-amd64.zip"
      sha256 "b83251e5684818e1b911fab23d1940248430e623a89354987a277871828e7456"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.129.0/eca-native-linux-amd64.zip"
      sha256 "9de799a0b71f4192bbdbb114f95d7e2649826c55bd58f9abec1ddb94d8604f60"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.129.0/eca-native-static-linux-amd64.zip"
      sha256 "934f448a4f2b556be553cdcc637aaac4897cd842226da27b226630f648790ae5"
    end
  end

  def install
    bin.install "eca"
  end
end

