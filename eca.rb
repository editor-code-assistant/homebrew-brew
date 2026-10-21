class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.166.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.166.0/eca-native-macos-aarch64.zip"
      sha256 "082b6576b357e91f2fed2a0979f5a9453fb171256761f6f2a1dfb2b93793f4ba"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.166.0/eca-native-macos-amd64.zip"
      sha256 "9bfed218dc6667ddbac5ee0d884b30ca30a690b1e5417c22c95766ee60796022"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.166.0/eca-native-linux-amd64.zip"
      sha256 "39f894198af0d7632195edb871381127a5239ef7a762b6e55303b23135fd5ef5"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.166.0/eca-native-static-linux-amd64.zip"
      sha256 "1f6d6d41d80543f9851b4417854a2cb7578fb31273bba2d935fb865a53cc98c5"
    end
  end

  def install
    bin.install "eca"
  end
end

