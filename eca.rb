class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.136.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.4/eca-native-macos-aarch64.zip"
      sha256 "50000e07dfb7ca475c90de58ba98c0a1d4a7143a4c70974c59abebcaba3d3c12"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.4/eca-native-macos-amd64.zip"
      sha256 "ffa6ea04e3e4a75985abccd48240de056810a5bddad6c0b90fa81919212cf5f4"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.4/eca-native-linux-amd64.zip"
      sha256 "8eadf6d622ce37f3b9be9e92ed21fd087b0ebdfc0a50e753c400d6d946270b77"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.4/eca-native-static-linux-amd64.zip"
      sha256 "52995cf126ff15927982ac1cc34e16be12d756e5d5a811be84965bef2b811ccf"
    end
  end

  def install
    bin.install "eca"
  end
end

