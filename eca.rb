class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.26.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.26.0/eca-native-macos-aarch64.zip"
      sha256 "58242eef7414c40b27ee56d9517a4bb2fda5ad90cb7d9862ec37afc7b4bcf849"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.26.0/eca-native-macos-amd64.zip"
      sha256 "0ee2648de3dda276902e134410a327d7d025d92e66a8fb92b7eedfb3a83a3503"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.26.0/eca-native-linux-amd64.zip"
      sha256 "7e597c528e9e3c4bb37a871464bd7dd42663a6251bfdb6202782b7ea7f61f345"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.26.0/eca-native-static-linux-amd64.zip"
      sha256 "4960fcd556067e07f6b1502f7ab835f29833ee05ccc3c75a6c5724a047852286"
    end
  end

  def install
    bin.install "eca"
  end
end

