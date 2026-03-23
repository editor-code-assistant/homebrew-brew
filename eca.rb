class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.116.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.3/eca-native-macos-aarch64.zip"
      sha256 "5ed819b72032054c9ee0a61f86e0eeb94c50951bd78761365d470f9369e3c1dc"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.3/eca-native-macos-amd64.zip"
      sha256 "142d41f86c6fc52cbdc534da4a9dd19bdf9bd33e8fc1db060d3a56d24d4d7713"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.3/eca-native-linux-amd64.zip"
      sha256 "3c1a2d5975bc412f69e66e3cb33b125e8ad0c4a82349ec32f3bda19ec0922a74"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.3/eca-native-static-linux-amd64.zip"
      sha256 "27441a3e77b98a5b94df3ea31adfb8f501bf608321d0280bc49d73ac3bd2bb74"
    end
  end

  def install
    bin.install "eca"
  end
end

