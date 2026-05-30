class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.136.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.3/eca-native-macos-aarch64.zip"
      sha256 "af77a650c8fb818f1d1c8c9db2bbbd2e7de9e880de5281c3072b389f145963b6"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.3/eca-native-macos-amd64.zip"
      sha256 "65d1e6fcf65d6837e064a5d8652bbc1f78c83e43f4348f8f9c1a4bd3902fec43"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.3/eca-native-linux-amd64.zip"
      sha256 "70a95523d8ef06e4d17ed0bfdf8a85edde8b328ae035266ba7450fbf185dce89"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.136.3/eca-native-static-linux-amd64.zip"
      sha256 "7ebcaeecd2a689521d06a7f9174bed7b7f7b71e753177b841e0997adc220e38f"
    end
  end

  def install
    bin.install "eca"
  end
end

