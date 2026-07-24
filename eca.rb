class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.150.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.150.1/eca-native-macos-aarch64.zip"
      sha256 "1fcb3bb09704a5d6cc80e98fccc429cc4ff106294c1845a565bc9078e3f38efd"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.150.1/eca-native-macos-amd64.zip"
      sha256 "6862d0fc510655914ff5ed6520b96eccba20ae4bb626c2278a96df1c5d3a1431"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.150.1/eca-native-linux-amd64.zip"
      sha256 "d00dbf2016ea08e6bb4f2505c4f7fea4a197af8934e76e6bb5912c0e3b62e13c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.150.1/eca-native-static-linux-amd64.zip"
      sha256 "39d337f2001d56c276a8fcfae0d88caa45c65ba2f84116f8f98aba0ade206df5"
    end
  end

  def install
    bin.install "eca"
  end
end

