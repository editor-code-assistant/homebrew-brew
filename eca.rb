class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.127.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.127.1/eca-native-macos-aarch64.zip"
      sha256 "042ed07a71c91b030d060f2bdbb542c521ff1ab8c830f5685ad0ff1586702308"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.127.1/eca-native-macos-amd64.zip"
      sha256 "6a2ac8e674461fcf381b1bafb34d72d42f5ca8aa40759ad91eb66e73aad6cef5"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.127.1/eca-native-linux-amd64.zip"
      sha256 "c334b14bcc119ca7d859aa80d4ed526a0d7c093da19192900616ac5f5a5c86dd"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.127.1/eca-native-static-linux-amd64.zip"
      sha256 "eb7021574035faa90c57a72eb8e97c3040dce135a30c9d1533155e94b5a158e7"
    end
  end

  def install
    bin.install "eca"
  end
end

