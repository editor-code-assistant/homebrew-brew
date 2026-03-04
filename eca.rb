class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.109.6"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.6/eca-native-macos-aarch64.zip"
      sha256 "57290d1f38913b44d067830e3e257c5de713be5eb7d0c3cb65398d2d36f32b3f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.6/eca-native-macos-amd64.zip"
      sha256 "f014707f0f14374c12906c923d2f04a18e7606a9245126ce4bd389402dafda85"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.6/eca-native-linux-amd64.zip"
      sha256 "86693bfd58c23f8d3bd5af703dc96a635bfd3d167a78940e93e471773ba5b3d2"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.6/eca-native-static-linux-amd64.zip"
      sha256 "053ce2a62f3d4890f7c720447f67ede0af51daae6a062b318f178e85c551980c"
    end
  end

  def install
    bin.install "eca"
  end
end

