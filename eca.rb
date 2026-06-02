class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.137.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.137.0/eca-native-macos-aarch64.zip"
      sha256 "d9ae9dc500873284e5c7e461b242ae332bb4ac9e68fa672c411637272236959f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.137.0/eca-native-macos-amd64.zip"
      sha256 "e60014556563342d4799157b50a8c894015289aa0459d28fe1d7ff712ac98699"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.137.0/eca-native-linux-amd64.zip"
      sha256 "27c76b7b1c67f5ec72c05037de5e3ef2610ac2259f1e87d8c652f65b4e40a668"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.137.0/eca-native-static-linux-amd64.zip"
      sha256 "3eb12f6523fee3f2264559177dbadcb8464b4ab72607747b30d21c635825a93f"
    end
  end

  def install
    bin.install "eca"
  end
end

