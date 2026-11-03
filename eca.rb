class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.170.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.170.0/eca-native-macos-aarch64.zip"
      sha256 "e0f0d19beabd62e25a38a674660b4acbec2238140b46226e480a1660164c24e2"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.170.0/eca-native-macos-amd64.zip"
      sha256 "bc22d8541f6b4ac1e8bb3668ecf8d1e210cae74512ec376260c4580e29256d44"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.170.0/eca-native-linux-amd64.zip"
      sha256 "778f34e276b7a69cab6bf2f51c8bcd9958ce5215d0e6c5f655ee5e1d3c5c792c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.170.0/eca-native-static-linux-amd64.zip"
      sha256 "03134e91ad7007d5fbd26670c6ab8c2c09f9f56099e623a2af621973a43c63bf"
    end
  end

  def install
    bin.install "eca"
  end
end

