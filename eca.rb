class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.110.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.110.0/eca-native-macos-aarch64.zip"
      sha256 "39d666b376a7b2697541d9260de1e2f0106c6f7fd8fb43e8d07132833780bef0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.110.0/eca-native-macos-amd64.zip"
      sha256 "6f770b88674ff58142ed950fde1b2d67a5f023b6c489cb22855af8b513d28c98"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.110.0/eca-native-linux-amd64.zip"
      sha256 "f5dd543443b977239ce7900e7e065f4dd650bc25d2ea3ade6dc5ab1eb1b89bbf"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.110.0/eca-native-static-linux-amd64.zip"
      sha256 "f16afe9e96ea98ea4f0ea6f2eab9cef46161413cb41103a7b019afd1ea5f006d"
    end
  end

  def install
    bin.install "eca"
  end
end

