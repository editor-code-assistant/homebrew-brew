class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.92.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.92.1/eca-native-macos-aarch64.zip"
      sha256 "ef3b5c7a371cdeacb0f23da28e7c8d2ab016248772d1eac867d1f4d61f209985"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.92.1/eca-native-macos-amd64.zip"
      sha256 "cebd9be296f4ee913db06dd0c0518adb78aebe0162c1c93069c3ad70943bb336"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.92.1/eca-native-linux-amd64.zip"
      sha256 "ace6083c906dfe86a9bb9b0e3e99f5aaf866b9cb35b7ff102cacce908233ba7d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.92.1/eca-native-static-linux-amd64.zip"
      sha256 "32cdeb36c46b56a823580f241cf6097d44389303c8defdd14bb7701ebfb4d34d"
    end
  end

  def install
    bin.install "eca"
  end
end

