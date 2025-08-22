class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.32.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.2/eca-native-macos-aarch64.zip"
      sha256 "99c1ad463e83cb147aa092bf2aaea7168e587538cab594feb6f2bbda04597444"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.2/eca-native-macos-amd64.zip"
      sha256 "0ef18da8c97322dcd748606e0aa5c4c3104b775b7ae94408947e342a5da96b80"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.2/eca-native-linux-amd64.zip"
      sha256 "0af4cd7367126682787e00d13fd617744cf044c44cdb7b6d41f71c90c502728e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.2/eca-native-static-linux-amd64.zip"
      sha256 "685883c9b00a304aeaf8ef06c801ecf8c8014a940f285f950162b317be11f9a6"
    end
  end

  def install
    bin.install "eca"
  end
end

