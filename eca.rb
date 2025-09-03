class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.46.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.46.0/eca-native-macos-aarch64.zip"
      sha256 "9fb441a4a0b0f006475444d2e833b5af1b0ca938056408405df6b9eb5bb875a9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.46.0/eca-native-macos-amd64.zip"
      sha256 "78f3b97f52c7ccb3cddf173c58acdad54dc5103724f250424521273e8fd5e050"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.46.0/eca-native-linux-amd64.zip"
      sha256 "2baa96e63e7676796d7daa076f011066f5901d000befeb823e1011d178542b4a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.46.0/eca-native-static-linux-amd64.zip"
      sha256 "8401136e0f110b9392970d469ca2f87eea9c3d579c3e1e7ef3bc46f0dfb456f8"
    end
  end

  def install
    bin.install "eca"
  end
end

