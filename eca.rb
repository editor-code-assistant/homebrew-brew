class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.126.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.126.0/eca-native-macos-aarch64.zip"
      sha256 "7d54b32e0bc56e4249c7cd52d95338ac3de5b52a7b27a242eac1f6bee6cf12d5"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.126.0/eca-native-macos-amd64.zip"
      sha256 "fcbef1a33bb1f6798ce1b75c927bd863ce99f40b5babb06b94b2e6ecd8914fcf"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.126.0/eca-native-linux-amd64.zip"
      sha256 "7d4f940c9c77a2645cd99e9159e0478536b9e6dbe88cd1f4a9514a9cdb6a5447"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.126.0/eca-native-static-linux-amd64.zip"
      sha256 "225669566e777f8d6c3c9b92e59748d5f2e9fb3e7f5c992b8cc42f3165e2b093"
    end
  end

  def install
    bin.install "eca"
  end
end

