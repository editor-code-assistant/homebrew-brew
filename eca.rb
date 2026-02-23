class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.104.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.104.1/eca-native-macos-aarch64.zip"
      sha256 "93ad241bbc24864a19c85c082eec927b71bef6c6c73337937dbdb8283c2274eb"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.104.1/eca-native-macos-amd64.zip"
      sha256 "bab541bcb66e035f092be8adc1a3c4de468929c891f7f79d07dfc0755f40581f"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.104.1/eca-native-linux-amd64.zip"
      sha256 "1a4941fda8b8cee486d2a6b525c8adf28bb3de24ea8e83b31c5f4adef27fc947"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.104.1/eca-native-static-linux-amd64.zip"
      sha256 "3c29cbdc98589996922e88c7988f65db8f2f371abf26b5914ab70cc9707cf30d"
    end
  end

  def install
    bin.install "eca"
  end
end

