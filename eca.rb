class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.78.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.3/eca-native-macos-aarch64.zip"
      sha256 "553daeaa222d537618db220b40f0b98801c38ddbccf3bc90b406de7aa379324c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.3/eca-native-macos-amd64.zip"
      sha256 "7f2d5615c5dad4491d872e9acea9a46fec0c19f11768bdbb1253cf1968c880d7"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.3/eca-native-linux-amd64.zip"
      sha256 "a596fa7a4d3112a7c12e77cd0bdd7d70c0ec4133317819f48705faaa52e9b5aa"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.78.3/eca-native-static-linux-amd64.zip"
      sha256 "638ec3100f6eb90b83e5b42e3650c0586cab0f120284615cecbdf7f388154b04"
    end
  end

  def install
    bin.install "eca"
  end
end

