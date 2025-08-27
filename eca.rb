class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.36.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.4/eca-native-macos-aarch64.zip"
      sha256 "1e387187f0e3d4419cddb45c008950c6f916813e737c16f3f64154020a1666b0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.4/eca-native-macos-amd64.zip"
      sha256 "42bdee3eb9ed081ed6866b6321f268110cb5020b77afc38c0a470d5806ef7241"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.4/eca-native-linux-amd64.zip"
      sha256 "0e4a791d64305f2750f646ed07edc2fabb733f32617810891560c5eb6bea452d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.4/eca-native-static-linux-amd64.zip"
      sha256 "1a220ec31564d17457e84ccc59df0ce8b188989be39489b1ce1d37beefdbe99d"
    end
  end

  def install
    bin.install "eca"
  end
end

