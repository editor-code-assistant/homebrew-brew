class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.87.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.87.0/eca-native-macos-aarch64.zip"
      sha256 "523f72b3767f7c015da4f1e75040e530fe2ea72d24487d7216f0f3483fedda38"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.87.0/eca-native-macos-amd64.zip"
      sha256 "0caa7e65a29d3d3676bb4828e40ac3b0f3aed66e9b0ba8fc9d027a0bc3f2faa8"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.87.0/eca-native-linux-amd64.zip"
      sha256 "a0152e7cadb2e4f5de69249ab512c83d423ad9d52dbc0f47f574c1587070032e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.87.0/eca-native-static-linux-amd64.zip"
      sha256 "c61a420bc60c1fc5006305882d7dcfd0aa66bb801a11e270cff82839e7035536"
    end
  end

  def install
    bin.install "eca"
  end
end

