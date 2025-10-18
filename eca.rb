class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.70.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.4/eca-native-macos-aarch64.zip"
      sha256 "25da88d53fcc0253799c9f73e1e2cebe9d455560cebeceaa8a3bb2faa75e2fc6"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.4/eca-native-macos-amd64.zip"
      sha256 "fedd8384b1af83f9d158d76b0c4391ddeb44a212f22e3a0965b937f0ae948764"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.4/eca-native-linux-amd64.zip"
      sha256 "e018cf4312af29c58cada7dd00e36bbd3e7e433eb599299da64d587d1454572e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.4/eca-native-static-linux-amd64.zip"
      sha256 "3815e3679b860081def2613b4931e4a27488edc6903ee1cf5505f4ca03f5ac94"
    end
  end

  def install
    bin.install "eca"
  end
end

