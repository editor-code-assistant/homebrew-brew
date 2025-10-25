class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.72.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.72.2/eca-native-macos-aarch64.zip"
      sha256 "3ac987b05630398cb4f8cd3e231a29ece198319f37c115285327e390ea1f02ec"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.72.2/eca-native-macos-amd64.zip"
      sha256 "43a56e0f6b98bc30b42feba9277fa5f567f7ed9a8615407f196f1ade4ebca9f0"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.72.2/eca-native-linux-amd64.zip"
      sha256 "144c3057dae13fb337471e4f89d636094319952a91b8dfd830c0d3d42221665c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.72.2/eca-native-static-linux-amd64.zip"
      sha256 "4b86981be30110acbfbabb68561323a3e4cec25ebaeb1ba25603bac87f36c5d4"
    end
  end

  def install
    bin.install "eca"
  end
end

