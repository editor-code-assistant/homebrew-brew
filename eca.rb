class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.104.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.104.2/eca-native-macos-aarch64.zip"
      sha256 "29e27970f73d84389458857821bc3ac8a6d87443dc4bda452709280f76952e3a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.104.2/eca-native-macos-amd64.zip"
      sha256 "424e407142cef5332e7ea60fcfc3bd9ca2ea041f78f9a4a078c096b296337116"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.104.2/eca-native-linux-amd64.zip"
      sha256 "48504b15031ce13b6e8544fb6f60901c4e4634beed94a8186ad38f8a7704c6e2"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.104.2/eca-native-static-linux-amd64.zip"
      sha256 "18cd98d34957c1bf3d813a5842da76c8701183cfc5239617ae651ed8863cf364"
    end
  end

  def install
    bin.install "eca"
  end
end

