class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.134.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.1/eca-native-macos-aarch64.zip"
      sha256 "3956d155e6de5a4eb175a82aa101243bcaad0909f7f12f99a32743f5ce3b8766"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.1/eca-native-macos-amd64.zip"
      sha256 "bac66dede2b89c861dd2cc7a7b8f951286f1f9d04bdca4c66e8d03453e7a748f"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.1/eca-native-linux-amd64.zip"
      sha256 "e1c65443bf3b289b8c711c645ad239580654e9933e250a0fd6dac9818eebc8ac"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.1/eca-native-static-linux-amd64.zip"
      sha256 "884d794ed162c1babbabd140029a445eb0af9494b0926b655e0d6747edfe9309"
    end
  end

  def install
    bin.install "eca"
  end
end

