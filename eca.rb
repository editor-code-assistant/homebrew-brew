class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.89.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.89.0/eca-native-macos-aarch64.zip"
      sha256 "16fe219b08a62be4d3b421af6c51b76eb3395b3a7647b6633e4704d1f266b0dc"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.89.0/eca-native-macos-amd64.zip"
      sha256 "2b4605395d3afdb84b832d424d882d3eac85ba807ba67ea4afa1ba5b03d38cab"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.89.0/eca-native-linux-amd64.zip"
      sha256 "26d7708ab190fe9bc3811068f64fdfedba72654c8cec048b0fded9e6600b70f7"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.89.0/eca-native-static-linux-amd64.zip"
      sha256 "5b8c3c35a1ed7d72fc235c990f7ca25aecf5aec4a6930f27b3cb7fafb4e22877"
    end
  end

  def install
    bin.install "eca"
  end
end

