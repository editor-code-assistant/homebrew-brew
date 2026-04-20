class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.128.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.128.1/eca-native-macos-aarch64.zip"
      sha256 "a2d103dc97cfe6ff271c0f938e7497001fc17653408d882a67b567af9a09b507"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.128.1/eca-native-macos-amd64.zip"
      sha256 "503ac292639439360fb5b9a85e89dcd7971ee315cf1ab54f9ffb486a9bec33d0"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.128.1/eca-native-linux-amd64.zip"
      sha256 "04e0a4b728004500b6f3da39d524c71b6222d9f22f9009138f9eb0302af762cb"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.128.1/eca-native-static-linux-amd64.zip"
      sha256 "6c167da30d1276e593dce9330a5e94b0e8c0c18b887a329bccb254a63461edc5"
    end
  end

  def install
    bin.install "eca"
  end
end

