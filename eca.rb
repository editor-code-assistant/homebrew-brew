class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.152.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.152.0/eca-native-macos-aarch64.zip"
      sha256 "5321d30f4ccf6ca54ed9dc41d5fc4ac70adfb3e456ff3e7d3eae1dbf1040d844"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.152.0/eca-native-macos-amd64.zip"
      sha256 "fb4fa3c00c72746ea1da328b379222c0118cc59e94a1c715974ca1e913c05362"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.152.0/eca-native-linux-amd64.zip"
      sha256 "bce36967610d16744eb16bfd04494de9d1677da265d513b69bcbf838baeff397"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.152.0/eca-native-static-linux-amd64.zip"
      sha256 "3b093e132182f1b335a158aeda67c4c374ad4f4edfb93312500d4f95807b90c1"
    end
  end

  def install
    bin.install "eca"
  end
end

