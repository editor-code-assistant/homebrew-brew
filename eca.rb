class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.135.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.1/eca-native-macos-aarch64.zip"
      sha256 "cdc0527fd32f0413087948c7f63c888b31bf47b851d2033fb48138f678e2f587"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.1/eca-native-macos-amd64.zip"
      sha256 "64d2e1f4fa7d9bfd3e7515b47668ae0827e72f835c7c734e88e420374bd1bd28"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.1/eca-native-linux-amd64.zip"
      sha256 "e55194a088ed776f13fd0c39f8dc876bd2ccba8de3b738e0c19407214452cc29"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.1/eca-native-static-linux-amd64.zip"
      sha256 "352fc61314b58600c82eb77b883115d3f33137d3a8824cf28bfe5bcef82f9415"
    end
  end

  def install
    bin.install "eca"
  end
end

