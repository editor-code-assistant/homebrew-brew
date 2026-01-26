class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.96.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.96.0/eca-native-macos-aarch64.zip"
      sha256 "c19eb776f196ea4d155c4bf71f0db12d1ba6c93f4a89255cd12fe51cc7a9743b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.96.0/eca-native-macos-amd64.zip"
      sha256 "f131a3721b69bd1117fe8e3fbb85d7c038f1c9eae83be7f05030f856d980b778"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.96.0/eca-native-linux-amd64.zip"
      sha256 "f2a471b436037a9678c5d481a2c445321222319c5f7a4fbc9be0868284c5f548"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.96.0/eca-native-static-linux-amd64.zip"
      sha256 "aab10786f65b82216a700305f4a7b70adaa94c8778d5c8b9211c91f3191172e9"
    end
  end

  def install
    bin.install "eca"
  end
end

