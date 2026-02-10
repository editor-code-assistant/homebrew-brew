class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.100.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.1/eca-native-macos-aarch64.zip"
      sha256 "c6fcf839b2fb28024554b3f34d85813c7f0f72198df0093edc6cd6e5267b31fc"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.1/eca-native-macos-amd64.zip"
      sha256 "8fa3e0ff6f1cdb2ef14aa5c3fc3eb3cf2eddc7d4970f93c08928c58fa5b2cdd0"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.1/eca-native-linux-amd64.zip"
      sha256 "5f487a93a11ef7425ec1192feb2792b23adf6de951e22a2f549ad0d0d31772d9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.1/eca-native-static-linux-amd64.zip"
      sha256 "199c48e4a257631362d075d59ec3e86d99191ebfc115268e260e9f80eaed7e13"
    end
  end

  def install
    bin.install "eca"
  end
end

