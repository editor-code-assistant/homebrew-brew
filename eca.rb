class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.26.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.26.2/eca-native-macos-aarch64.zip"
      sha256 "d91c4f9a158225b0ee9caacce67421cf247fdb2b6fb8e8d6a3084e541e1d23ac"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.26.2/eca-native-macos-amd64.zip"
      sha256 "3815adb81ba2e1b384f3ba7fd6fce259ab5edf9925645f00cfd0816759fce92e"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.26.2/eca-native-linux-amd64.zip"
      sha256 "8aea916424fa452bca9e34068430a7c3bc22c5a14d1d2e752238a423f35f5b6e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.26.2/eca-native-static-linux-amd64.zip"
      sha256 "13dbd5118d0c29943f70bc43dfb006fddf986044559ab5ea60c0f4bf94647ee2"
    end
  end

  def install
    bin.install "eca"
  end
end

