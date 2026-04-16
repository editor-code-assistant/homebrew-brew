class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.127.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.127.0/eca-native-macos-aarch64.zip"
      sha256 "faef225d2972369d44e3623d5457e985335c074a3f6116ba8923aeff25c0a391"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.127.0/eca-native-macos-amd64.zip"
      sha256 "c746ebca005146a66d85b79daca1511d015e3376795ff07746ac697e45a6c4c9"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.127.0/eca-native-linux-amd64.zip"
      sha256 "474f841641fa94f77cbe46a8c0ce1628b223a454732ce8cad94bd173e8f8ed10"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.127.0/eca-native-static-linux-amd64.zip"
      sha256 "2508ff6c4839e33b3ff73d23dc9afb96de6f74dbe70d5e562d1a53d6467cd99f"
    end
  end

  def install
    bin.install "eca"
  end
end

