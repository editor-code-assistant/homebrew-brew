class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.173.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.173.0/eca-native-macos-aarch64.zip"
      sha256 "3a829842b3b27349a08dbc8f1d55fafc2844be9569bbcba7962aa508bb58d0a6"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.173.0/eca-native-macos-amd64.zip"
      sha256 "5f433e955ec58dd9eba560a4c1d365d83b0e447de91028d0f75a35fa04ede54c"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.173.0/eca-native-linux-amd64.zip"
      sha256 "7c56f85c14d6b1e0c8b657e1e19b643fed435bab1c2b0136e48060d61aae0beb"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.173.0/eca-native-static-linux-amd64.zip"
      sha256 "b75d8133f2645fb6697fc52221ccae28628486d053c8240d04f5f9d3b333ece0"
    end
  end

  def install
    bin.install "eca"
  end
end

