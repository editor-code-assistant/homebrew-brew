class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.163.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.163.1/eca-native-macos-aarch64.zip"
      sha256 "dfec19e911bff6ddd2e305852cd2eec40a1d26267dde3a367ad0301b7f9beee4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.163.1/eca-native-macos-amd64.zip"
      sha256 "33df216edee2c2e2da53d8502722de11cdadff5abad94e53ad7180a2bf2fdef7"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.163.1/eca-native-linux-amd64.zip"
      sha256 "eabaca0ee51b73c7c09d2cb3db7f5140b2b35399dcd38894b983cedc49241bc2"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.163.1/eca-native-static-linux-amd64.zip"
      sha256 "cb37ac2953c1480ff315e6b2c15b4aff2f5f01ab22b843ee38d21c1245b5d216"
    end
  end

  def install
    bin.install "eca"
  end
end

