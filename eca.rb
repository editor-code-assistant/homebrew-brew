class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.83.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.83.0/eca-native-macos-aarch64.zip"
      sha256 "947a3bb8d04bbf5c99060cd3b72cb932b493071166cbcca12d3923d12a661460"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.83.0/eca-native-macos-amd64.zip"
      sha256 "0f11ad076c10bc061a21fa75d6d0d973d1e66b5e622b08e60556524d363ee74a"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.83.0/eca-native-linux-amd64.zip"
      sha256 "71402c90b196ce3bb696e4f1967b2e196113fcddc9c41fe95945c07f0db4e097"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.83.0/eca-native-static-linux-amd64.zip"
      sha256 "91bdf1db8295d3f0f0d0fb5658b34f7dff99f9d1cf5565e301dd8e995c8c0af0"
    end
  end

  def install
    bin.install "eca"
  end
end

