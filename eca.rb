class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.168.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.168.0/eca-native-macos-aarch64.zip"
      sha256 "d324e3b47b63e722ea47e81395f289026f6ec439e80e57f32875f0aa83ff811f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.168.0/eca-native-macos-amd64.zip"
      sha256 "cd2eb291858372554428cd4da08a5eed71da091950197e20ec0e431cf427c9a1"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.168.0/eca-native-linux-amd64.zip"
      sha256 "4865025dce8ce143a120ddbfea4940f9b381945fc476e191f0ea5a6c31f5ca8b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.168.0/eca-native-static-linux-amd64.zip"
      sha256 "e309f1d254b7fa7e5c7ed09c9bcbf01ea8f35c6bcb42b5e264efe2c5c5e28ffb"
    end
  end

  def install
    bin.install "eca"
  end
end

