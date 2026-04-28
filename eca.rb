class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.130.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.130.1/eca-native-macos-aarch64.zip"
      sha256 "027c3696361ce82bb2037256299b86f8eb3433ea46f6ebf8816fb1aaa93400c7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.130.1/eca-native-macos-amd64.zip"
      sha256 "b66bdb3914d01932a170b31e88f88ff9aa839898809f19d979978ca91db1bc4f"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.130.1/eca-native-linux-amd64.zip"
      sha256 "d846719badce22a4e886a5fb183b2aa44563b0761c0bc8e139fd621b688e87cf"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.130.1/eca-native-static-linux-amd64.zip"
      sha256 "0d52e8fd780f21adf3388b63a26c22c152c882f2e3a48a92421e8f9a061c4411"
    end
  end

  def install
    bin.install "eca"
  end
end

