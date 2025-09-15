class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.54.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.54.2/eca-native-macos-aarch64.zip"
      sha256 "491acaf645c68a47f032e48e3121b3be46c68e953db457a22bbb9df4e1717b6f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.54.2/eca-native-macos-amd64.zip"
      sha256 "401530bd511363734c4f0545813182e622717ebf736d61579c2c4486c91a67d9"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.54.2/eca-native-linux-amd64.zip"
      sha256 "6a158a9cf64f62ac3414715590ccda0b2fd96aa77231571e2c441bad3c49136b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.54.2/eca-native-static-linux-amd64.zip"
      sha256 "643cbd89e8372a0ec5c69754f1e184b1b7e10272a66a57c3837d4732d60146b3"
    end
  end

  def install
    bin.install "eca"
  end
end

