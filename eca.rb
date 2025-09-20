class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.56.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.3/eca-native-macos-aarch64.zip"
      sha256 "404c0b2a0ae2178313b27e2129779b35f35039fd7b546e050f3314684e85c729"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.3/eca-native-macos-amd64.zip"
      sha256 "3b81a14d6e5f93f7d077b4471b4442827126333657e05c6d2c3b48d569930b0b"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.3/eca-native-linux-amd64.zip"
      sha256 "e4a84ac9e624e0a6d52eac295a82200b40820be5555a311c891b568239cd7acc"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.3/eca-native-static-linux-amd64.zip"
      sha256 "a077f8ec6458a6a70c0ea684f6d97a5d7ba018811ae23ff0234507142e94b08d"
    end
  end

  def install
    bin.install "eca"
  end
end

