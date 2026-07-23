class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.148.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.148.2/eca-native-macos-aarch64.zip"
      sha256 "484837bf807528e7fd8836eddea0176e00e2d45888c58875efbe0f7967b94892"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.148.2/eca-native-macos-amd64.zip"
      sha256 "a0c5f1ebd86fdd35454682ffd8f295c8634e55f5d0b3b538bcba5956092be90c"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.148.2/eca-native-linux-amd64.zip"
      sha256 "3edd4d12e40116d99de83bd3f399a5f6cf980694c91a06633e3fbc18e6f1bd7f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.148.2/eca-native-static-linux-amd64.zip"
      sha256 "91b0b7728f1086adb6a3fa0e9b50f719e41c79c381299cd97e0f442e618a1ca3"
    end
  end

  def install
    bin.install "eca"
  end
end

