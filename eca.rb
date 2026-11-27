class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.175.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.175.0/eca-native-macos-aarch64.zip"
      sha256 "77a195f405fe2984d184c35119237bc33688b1bed2ac0b7c53af89dfc324d4ee"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.175.0/eca-native-macos-amd64.zip"
      sha256 "21f20c24ae64e33da8de2a08c2eae6ad3116161f44731ff9a944581497ec0a94"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.175.0/eca-native-linux-amd64.zip"
      sha256 "4a41382ad8743853bcd0ae532caa1f89786ceee3fc11c63dbbf824b6be3ebe32"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.175.0/eca-native-static-linux-amd64.zip"
      sha256 "c11e022f19b5cc0b925d4536e221252f09f7563a163ec783883bedd04d09d04a"
    end
  end

  def install
    bin.install "eca"
  end
end

