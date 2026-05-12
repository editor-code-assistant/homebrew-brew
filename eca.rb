class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.133.6"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.6/eca-native-macos-aarch64.zip"
      sha256 "58443954da88155ee88baee11273cf11758e8f56a22a81eb3d59d064bf6b8c89"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.6/eca-native-macos-amd64.zip"
      sha256 "eb61ea8ab9e351224f7481ea6d44ba5f59acf895a67c752266d8754416f37b60"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.6/eca-native-linux-amd64.zip"
      sha256 "97696558c94b128fd2f498eec09d85e005a67f43ef412802f622f05b316a91d9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.133.6/eca-native-static-linux-amd64.zip"
      sha256 "80a14e81e024dfc2aada414d77a9b07bfb890e80de370a5e7a94675c0548b122"
    end
  end

  def install
    bin.install "eca"
  end
end

