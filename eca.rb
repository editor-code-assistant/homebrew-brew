class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.91.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.91.0/eca-native-macos-aarch64.zip"
      sha256 "0c4d043af9b508582da3655c3d9b0377e691590dda4a2afda2417f42fa6755b4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.91.0/eca-native-macos-amd64.zip"
      sha256 "4d563b9e8fc331bfca0e850743a9e137a7dfa0005af3ac47233a6151ee0507e9"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.91.0/eca-native-linux-amd64.zip"
      sha256 "c92b45e2a82ce2120cc04b933d14fa0351928180bbc9b802d74584d5302849fb"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.91.0/eca-native-static-linux-amd64.zip"
      sha256 "6fc29870b6235a88655e96b4c0ba2e9967b075b561d5f224f9983550515a54ec"
    end
  end

  def install
    bin.install "eca"
  end
end

