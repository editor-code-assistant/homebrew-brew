class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.106.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.106.0/eca-native-macos-aarch64.zip"
      sha256 "2c4572e5d7d2151acb0afdffdc17f18a516e93c69f7b1e80b3f70c0cc8342807"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.106.0/eca-native-macos-amd64.zip"
      sha256 "bac63b57a7f76375e719fd594d2371b1d94ac7baddfb8e91d098fd132c140ccb"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.106.0/eca-native-linux-amd64.zip"
      sha256 "cde2a3437acd1499a11d5af969d08e8c71bce87583fe38151a2e20e1bddcbc78"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.106.0/eca-native-static-linux-amd64.zip"
      sha256 "882fc775094782b3c999963fc33f5878afbac6f053a232b4bedc472707ad5a68"
    end
  end

  def install
    bin.install "eca"
  end
end

