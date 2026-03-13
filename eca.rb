class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.113.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.113.1/eca-native-macos-aarch64.zip"
      sha256 "11d39b293e3d0c1966e23f4c922504de38bf8129e68c3eddd308cd1f1409919b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.113.1/eca-native-macos-amd64.zip"
      sha256 "b3a5c63881d6d77c46dd87ddc24cb4f93d901e8af4b465ebbe216812416cdb9a"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.113.1/eca-native-linux-amd64.zip"
      sha256 "e5019414a811a17fa6265e5c5798186ca4b5bf653edf18798da55a7bc35ed167"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.113.1/eca-native-static-linux-amd64.zip"
      sha256 "4e82dc2970e58f813f06d7e85c007860fdc24457b5a02a5df3bfa86b07aa351a"
    end
  end

  def install
    bin.install "eca"
  end
end

