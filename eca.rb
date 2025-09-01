class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.43.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.43.0/eca-native-macos-aarch64.zip"
      sha256 "1d55f8a472111e51ba8d991d8e975ef6f48d03db782fc3fdc0f441594812b5b9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.43.0/eca-native-macos-amd64.zip"
      sha256 "f71e4081dca92397674ce7e5b1dcf0027397c35426f15ebe38458c9fe1229c75"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.43.0/eca-native-linux-amd64.zip"
      sha256 "c7773c7a61bbd20f8de86b695e1f36651f2f740455b53a6a5a443661288541e7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.43.0/eca-native-static-linux-amd64.zip"
      sha256 "f770a15d8d89f7188382fccbca3362c684a07d34387d80000b90d940fa014df0"
    end
  end

  def install
    bin.install "eca"
  end
end

