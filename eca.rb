class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.74.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.74.0/eca-native-macos-aarch64.zip"
      sha256 "b653fd8e48a270ef30647bd649d0ee2232f61fb3e09fce0532a0dd56288de832"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.74.0/eca-native-macos-amd64.zip"
      sha256 "1dfffa4830e0e830d987928ba3569355e7402bd1232fcd4a6494f603c47ee2f7"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.74.0/eca-native-linux-amd64.zip"
      sha256 "0eed6f2e5c52fb36e2c9739f6c6c8ec2deddc61e33109d69975758bb1ed4e635"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.74.0/eca-native-static-linux-amd64.zip"
      sha256 "012e6e9b67b8376587049f487d72ec728f167edd46c27b9699f21ae302588ddc"
    end
  end

  def install
    bin.install "eca"
  end
end

