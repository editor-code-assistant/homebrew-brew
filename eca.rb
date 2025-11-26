class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.80.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.80.4/eca-native-macos-aarch64.zip"
      sha256 "67fd49a44ca7d5641db3e2af63185b75e975dead05209743c963ec25acb81be4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.80.4/eca-native-macos-amd64.zip"
      sha256 "f27f8d1cd7792f1cc529f0247cc24ff2480c4b38d6e89d55c78a87ea81b2f58b"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.80.4/eca-native-linux-amd64.zip"
      sha256 "c61d3a6f3724e84a16a2e73940240e728e2b7ec3d0308d602a1c9a18ef19a94d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.80.4/eca-native-static-linux-amd64.zip"
      sha256 "e2cc9b4be7cdfc592dbf147973534bae7e83801c63a9cb7aa0942488edf1abe8"
    end
  end

  def install
    bin.install "eca"
  end
end

