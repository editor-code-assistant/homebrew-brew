class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.124.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.1/eca-native-macos-aarch64.zip"
      sha256 "427362a9d20537cfa2ce2681a187e42b55f4d2b8e9afb3b0a02443e78f845783"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.1/eca-native-macos-amd64.zip"
      sha256 "bddbcc32ce86b2c92df590a61d909ab303d0472020cff271ed4f513696725034"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.1/eca-native-linux-amd64.zip"
      sha256 "7e6a059d22f666f69bfc7789e2286f41dc716f03d3e7129a7136f8e120de0626"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.124.1/eca-native-static-linux-amd64.zip"
      sha256 "56a6af6d8b43d8a73efdf3af79daf87c7c2f21af2932a961fc2ef6b4a3a648a7"
    end
  end

  def install
    bin.install "eca"
  end
end

