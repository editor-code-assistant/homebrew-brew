class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.71.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.71.2/eca-native-macos-aarch64.zip"
      sha256 "2d5e04f2ced7cc28235955757f4ec6841777e9f2624af53a9fefcd291ec8849a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.71.2/eca-native-macos-amd64.zip"
      sha256 "9650aef458aca0322af80494b15183f9f5e26d3a56fe1bae15927edc8e43f457"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.71.2/eca-native-linux-amd64.zip"
      sha256 "55a65a175e331920cfd84ab1b9ae3df2a01934fdf299f3b78c3caac79b20bf62"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.71.2/eca-native-static-linux-amd64.zip"
      sha256 "5c70ebcea1173aa21ca3105b37ef101d763f4ffdc118ed14d2061ad30352b790"
    end
  end

  def install
    bin.install "eca"
  end
end

