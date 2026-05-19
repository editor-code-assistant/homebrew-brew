class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.134.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.3/eca-native-macos-aarch64.zip"
      sha256 "2366d7e045acbdb6c2329bc052d02872bdceac84bafb9cbbe3c85dc14d3af509"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.3/eca-native-macos-amd64.zip"
      sha256 "fdbcf3688b50635d52c01175386a3fefca7eb3f0ea364f3495d75e86c4099970"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.3/eca-native-linux-amd64.zip"
      sha256 "91c402ab73f66a07c1849b67ca380ef9e47681f4e6a523b4aca31be1212489a0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.3/eca-native-static-linux-amd64.zip"
      sha256 "32c1365b63b71dd54831b301819d2af0e12c551daf549a42b065d9bf51c6e5ff"
    end
  end

  def install
    bin.install "eca"
  end
end

