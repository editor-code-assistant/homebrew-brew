class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.114.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.114.0/eca-native-macos-aarch64.zip"
      sha256 "d23adba5683c967de148f7d957f0392aeb784b249088b1970c23b5cbae6f2b37"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.114.0/eca-native-macos-amd64.zip"
      sha256 "bd152dc6c95c0435bb8b3e3c8ae7dec49685906875ef20c9231b0da01c869f8d"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.114.0/eca-native-linux-amd64.zip"
      sha256 "db4188807605979bbac1cea7a5b24fb10aa56200c9b87f3e7783f36e1283ba28"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.114.0/eca-native-static-linux-amd64.zip"
      sha256 "051d04aac384c6a2f29d56a54845337d8bc356910a96629cad0f84a1ea719b7a"
    end
  end

  def install
    bin.install "eca"
  end
end

