class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.63.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.63.2/eca-native-macos-aarch64.zip"
      sha256 "4a7e6900bc9b6470a9863e0633ab63f68d1e832389b447020b4217671945261c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.63.2/eca-native-macos-amd64.zip"
      sha256 "8789ce83b47237538d84793bc7dc371729766f0aaaf8032bac735f9bd2c502ef"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.63.2/eca-native-linux-amd64.zip"
      sha256 "cb7de67398c55fb53c9bfb54494b88f5b8decf1ad4e55acd3480179d3108d19d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.63.2/eca-native-static-linux-amd64.zip"
      sha256 "8496038a615f5b04419e2f33d4467d7b4ee4658f6d2903ca52d55f4e96b3c9d5"
    end
  end

  def install
    bin.install "eca"
  end
end

