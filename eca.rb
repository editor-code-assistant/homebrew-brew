class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.25.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.25.0/eca-native-macos-aarch64.zip"
      sha256 "9f53f1620f91f8fa84a3bf21ab7a96316023be5e462c9235f41813a772406b95"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.25.0/eca-native-macos-amd64.zip"
      sha256 "489fb98ce29a5f333614d6574f88a6b3a90a27cb89465ec5f0b263b73f035582"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.25.0/eca-native-linux-amd64.zip"
      sha256 "1d9288f9bc787dba936438aebf808c390c7f234b61494307b9a70370b777ea38"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.25.0/eca-native-static-linux-amd64.zip"
      sha256 "7da066a80d2bb97e4cc85897ec5bc3887e02f387d66bc644c1c4471035ff3979"
    end
  end

  def install
    bin.install "eca"
  end
end

