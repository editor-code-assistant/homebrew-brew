class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.92.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.92.2/eca-native-macos-aarch64.zip"
      sha256 "4de9d84f79a89aab776d8af5bc8f32536071785409915bac094abe087d55b9b1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.92.2/eca-native-macos-amd64.zip"
      sha256 "9f75c28580ae1a07ad42ebf2804f7cf1f9c76e483c8a6f8b1f018a7d73c4b819"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.92.2/eca-native-linux-amd64.zip"
      sha256 "bc223bff9e81006da4fe779b97a76710db7a09d8db83e2a4ae2f05cb4cc067be"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.92.2/eca-native-static-linux-amd64.zip"
      sha256 "1af10b9c848c83fccead6c1dfc780d364b54b0cca9d4997cb99ab971d71ea5f4"
    end
  end

  def install
    bin.install "eca"
  end
end

