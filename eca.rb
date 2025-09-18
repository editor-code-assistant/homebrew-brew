class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.56.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.1/eca-native-macos-aarch64.zip"
      sha256 "43bfac3e58985fd15bbb6a47844fe9688b702c8eb75ad110793d8a6f19b5dfad"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.1/eca-native-macos-amd64.zip"
      sha256 "8fb39dec0c9b2f68dfe88866d779c140d1ccd9bb81e0e80988d4c42d29ffc928"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.1/eca-native-linux-amd64.zip"
      sha256 "48f6f2ee472d88ac618a6ded726be3542d6b8eb833d1b90288e51d2028ee2bdb"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.1/eca-native-static-linux-amd64.zip"
      sha256 "b7cacfd7d7931ce2a50ff461fb34a6ffc95768d57c2912afaf7c0213b22aee9e"
    end
  end

  def install
    bin.install "eca"
  end
end

