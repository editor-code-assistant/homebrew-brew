class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.41.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.41.0/eca-native-macos-aarch64.zip"
      sha256 "161cde9ef7a64852e8c77463c37a8a0ec81f5e2602203821c562ae0592555cd4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.41.0/eca-native-macos-amd64.zip"
      sha256 "a67a52cb9dd1f0b8405baf2de2670ef20275e983fd573b5af360f3d8c3150a32"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.41.0/eca-native-linux-amd64.zip"
      sha256 "d008aeef95848b2e17c4a8b3b447fa0066f291d9eda46955e4f9899969a91da3"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.41.0/eca-native-static-linux-amd64.zip"
      sha256 "76fe6be45e9a1f33eb5a4ae2393bed4aba5358fa39262c85786d6b85ea88a641"
    end
  end

  def install
    bin.install "eca"
  end
end

