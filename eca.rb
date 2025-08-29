class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.38.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.38.2/eca-native-macos-aarch64.zip"
      sha256 "b9ed207af90989e00b0eda149d352cf61693e068e66bd6608b93bbd97e1a4c2f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.38.2/eca-native-macos-amd64.zip"
      sha256 "777e10ebb1ccb9241af04f257903a7c14737c36ea4a37be8b6ba1428ff8d2bbb"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.38.2/eca-native-linux-amd64.zip"
      sha256 "6d56fcf4e2839bedd8f44677f25342a6c1b85fe306231bff3256c6f961beba6a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.38.2/eca-native-static-linux-amd64.zip"
      sha256 "602bef18acc3e7d6901612ad2645c5f85f3afc75371ab756a6dc105b13ebbbac"
    end
  end

  def install
    bin.install "eca"
  end
end

