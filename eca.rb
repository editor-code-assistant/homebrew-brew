class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.32.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.0/eca-native-macos-aarch64.zip"
      sha256 "477114656b97e3ad8f9bfa0ce45714231943a334c51e8cf7421133ba1d19a7d5"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.0/eca-native-macos-amd64.zip"
      sha256 "5061be81be81ffa366c79eebc95ffba6aa09a56e3c5c927d57aec08802498a6b"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.0/eca-native-linux-amd64.zip"
      sha256 "2ba8b28d3ed2859a0af98a933b165488563c0de1dd91a0481bc876b1dae420d4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.32.0/eca-native-static-linux-amd64.zip"
      sha256 "04a1dc05b80feaf96e6e7a0ff095c1b8998380a74889ab0afb2a97953d069c89"
    end
  end

  def install
    bin.install "eca"
  end
end

