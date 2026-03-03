class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.109.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.3/eca-native-macos-aarch64.zip"
      sha256 "ab0f28fd8a543d80e5d9c8a8930224590a4ecd5b0e9425be13de139fd5f2122b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.3/eca-native-macos-amd64.zip"
      sha256 "07393220ec2c3415e1e3e7c23807ee65928a5992f415c160bc4bca20e0acb6b1"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.3/eca-native-linux-amd64.zip"
      sha256 "6588c0596727207fdfe00d16cfef3c2ccdda4bc746b2fbd2c0352719bb7ce1c8"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.3/eca-native-static-linux-amd64.zip"
      sha256 "5c4ce27fde7f994fee99a067a614e4f775c1a508b5cf42caf7093132e4856702"
    end
  end

  def install
    bin.install "eca"
  end
end

