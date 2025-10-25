class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.73.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.0/eca-native-macos-aarch64.zip"
      sha256 "8b770f1e4327c91bef2a519ea7c4a17f738edd928dbdc27eec97188f98078c91"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.0/eca-native-macos-amd64.zip"
      sha256 "4935ef6330238dfaede1d69a97d6789db332b666ed0a4f1bbf43731a5b6d4992"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.0/eca-native-linux-amd64.zip"
      sha256 "2aef63466ee159f4e68d1828dca0e1b0e2b0e2ff59ebbad97f0498a4652bf50d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.0/eca-native-static-linux-amd64.zip"
      sha256 "16b8127424a70c6aeb53605889bb34106813598e98733bc24e36956c15218fd7"
    end
  end

  def install
    bin.install "eca"
  end
end

