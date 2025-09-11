class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.51.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.51.1/eca-native-macos-aarch64.zip"
      sha256 "826bc79052414bfeea80fc167cb3231a837467d4a6614bb178a5324de4567d34"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.51.1/eca-native-macos-amd64.zip"
      sha256 "7d3419dd0c366cabaa8e21f3a8910c751dac5d1c803799bed234ec5d275eeabd"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.51.1/eca-native-linux-amd64.zip"
      sha256 "6f0dfa1c2066d6740cd2583b84c132256c83e07cb71ae209a12bf1bcb336f31c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.51.1/eca-native-static-linux-amd64.zip"
      sha256 "49b8942c5e9bcca775af97e297d3c8444f5e6b1245a3a676416cfa769432d72f"
    end
  end

  def install
    bin.install "eca"
  end
end

