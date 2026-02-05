class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.98.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.4/eca-native-macos-aarch64.zip"
      sha256 "01b4a17e45246237262c59d6685df5aac777832abbeb1c8254c94e000310dd37"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.4/eca-native-macos-amd64.zip"
      sha256 "a3dd0d507bf4c72dd3f0d83d26185d4982fe3ed4b252ccdbc7a163fe816a4563"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.4/eca-native-linux-amd64.zip"
      sha256 "949ac48b21eee956474f765743ffc35b2ab71eb6da15634031df89e9ff26d35d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.98.4/eca-native-static-linux-amd64.zip"
      sha256 "744307b297d5ac53fff30315e01bf750e0a469032fde686ddf48ff350a6701fc"
    end
  end

  def install
    bin.install "eca"
  end
end

