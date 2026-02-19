class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.103.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.103.0/eca-native-macos-aarch64.zip"
      sha256 "6af5c180dc48501d421bc817d8551f8309eb8a64ae982331205a89682b267f28"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.103.0/eca-native-macos-amd64.zip"
      sha256 "12efeb6373d9615e56d08c380d968f3ab40ea4545a6c609409eb1921e0eedd46"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.103.0/eca-native-linux-amd64.zip"
      sha256 "ad86f27f05e7d2d620f86f375ef0a804632354158b38440be54e556bca3027fc"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.103.0/eca-native-static-linux-amd64.zip"
      sha256 "6c341f4eb5087bcea715997013464c93645396c458dc551450a87c7e35b3c954"
    end
  end

  def install
    bin.install "eca"
  end
end

