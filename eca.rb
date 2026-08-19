class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.155.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.155.0/eca-native-macos-aarch64.zip"
      sha256 "776c62bd800e4270aead36941a252817538d5a7d8e529509f2fdd14d95694959"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.155.0/eca-native-macos-amd64.zip"
      sha256 "eceec23e07551ea1761454affe4051141f4911adb70d2594fe39af00f612ffa9"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.155.0/eca-native-linux-amd64.zip"
      sha256 "854b835f06cfd35146d4acc4b1abbaada160deb6b125bb4313aa852e91dd8878"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.155.0/eca-native-static-linux-amd64.zip"
      sha256 "2754d16526d780efea56a3d9d6b8b334a5c695bc284fbec0db3466219fe2b92f"
    end
  end

  def install
    bin.install "eca"
  end
end

